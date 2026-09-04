#!/usr/bin/env python3
"""Stop hook: when a turn ends, check the last reply for vault coinages used with no plain referent in the same reply.

Reads ops/plain-language lexicon.md (hard tier only). If the last assistant message of the turn uses a hard
term and none of that term's signature phrases appears in the same message, the hook returns
{"decision": "block", "reason": ...} once, naming the terms and their plain referents, so the session restates
before the turn ends. It never fires twice in a row (stop_hook_active guard), never blocks on its own errors,
and inspects only text the author will read (tool calls and results are ignored).
"""
import sys, json, os
def main():
    try:
        data = json.load(sys.stdin)
    except Exception:
        return 0
    if data.get('stop_hook_active'):
        return 0
    path = data.get('transcript_path')
    if not path or not os.path.exists(path):
        return 0
    root = os.getcwd()
    sys.path.insert(0, os.path.join(root, 'scripts', 'queries'))
    try:
        from plain_lexicon import parse_lexicon, scan_text
        lex = parse_lexicon(os.path.join(root, 'ops', 'plain-language lexicon.md'))
    except Exception:
        return 0
    last_text = None
    try:
        with open(path, encoding='utf-8') as f:
            for line in f:
                try:
                    e = json.loads(line)
                except Exception:
                    continue
                if e.get('type') != 'assistant':
                    continue
                msg = e.get('message', {})
                content = msg.get('content', [])
                if isinstance(content, str):
                    texts = [content]
                else:
                    texts = [b.get('text', '') for b in content if isinstance(b, dict) and b.get('type') == 'text']
                t = '\n'.join(x for x in texts if x and x.strip())
                if t.strip():
                    last_text = t
    except Exception:
        return 0
    if not last_text or len(last_text) < 200:
        return 0
    bare = scan_text(last_text, lex, tiers=('hard',))
    if not bare:
        return 0
    lines = [f"- {b['term']} (used {b['count']}×): say \"{b['plain']}\" at its first use" for b in bare]
    reason = ("plain-reply-check: the reply the author will read uses vault coinages with no plain referent in the same reply. "
              "Restate the reply so each first use carries the plain words below (later uses may keep the term), "
              "then add one row to the 'Reply catches' table in ops/plain-language log.md saying whether this catch was true or false.\n"
              + '\n'.join(lines))
    print(json.dumps({"decision": "block", "reason": reason}))
    return 0
if __name__ == '__main__':
    sys.exit(main())
