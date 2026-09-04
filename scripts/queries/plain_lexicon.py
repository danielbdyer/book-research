#!/usr/bin/env python3
"""Shared reader for ops/plain-language lexicon.md, used by plain-scan.sh and the reply check.

parse_lexicon(path) -> list of dict(term, pattern, plain, handling, signatures, tier)
scan_text(text, lexicon, tiers=('hard',)) -> list of dict(term, count, plain, handling) for bare terms
strip_noise(text) removes YAML front matter, fenced code, backtick spans, wiki-link targets, cache markers, and URLs
"""
import re, sys, os

LEXICON_PATH = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'ops', 'plain-language lexicon.md')

def parse_lexicon(path=LEXICON_PATH):
    rows = []
    with open(path, encoding='utf-8') as f:
        for line in f:
            if not line.startswith('|'):
                continue
            cells = [c.strip() for c in line.strip().strip('|').split('|')]
            # cells may contain escaped pipes "\|" split apart; rejoin by column count from the right
            if len(cells) < 6:
                continue
            if cells[0] in ('Term', '---'):
                continue
            # The Matches cell can contain "\|"; re-split the raw line respecting the escape
            raw = line.strip().strip('|')
            parts, buf, i = [], '', 0
            while i < len(raw):
                ch = raw[i]
                if ch == '\\' and i + 1 < len(raw) and raw[i+1] == '|':
                    buf += '|'; i += 2; continue
                if ch == '|':
                    parts.append(buf.strip()); buf = ''; i += 1; continue
                buf += ch; i += 1
            parts.append(buf.strip())
            if len(parts) != 6 or parts[0] in ('Term',) or set(parts[0]) <= set('-'):
                continue
            term, pattern, plain, handling, signature, tier = parts
            pattern = pattern.strip('`')
            try:
                rx = re.compile(pattern, re.I)
            except re.error:
                continue
            sigs = [s.strip().lower() for s in signature.split(';') if s.strip()]
            rows.append(dict(term=term, pattern=rx, plain=plain, handling=handling, signatures=sigs, tier=tier.lower()))
    return rows

def strip_noise(text):
    text = re.sub(r'\A---\n.*?\n---\n', '', text, flags=re.S)          # YAML front matter
    text = re.sub(r'```.*?```', ' ', text, flags=re.S)                 # fenced code
    text = re.sub(r'<!--.*?-->', ' ', text, flags=re.S)                # html comments incl. cache markers
    text = re.sub(r'`[^`\n]*`', ' ', text)                             # inline code and paths
    text = re.sub(r'\[\[[^\]]*\]\]', ' ', text)                        # wiki-link targets
    text = re.sub(r'https?://\S+', ' ', text)
    return text

def scan_text(text, lexicon, tiers=('hard',)):
    visible = strip_noise(text)
    low = visible.lower()
    out = []
    for row in lexicon:
        if row['tier'] not in tiers:
            continue
        hits = row['pattern'].findall(visible)
        n = len(hits)
        if n == 0:
            continue
        # A replace-tier term is never cleared by a signature: the word itself is the fault.
        if not row['handling'].lower().startswith('replace') and any(s in low for s in row['signatures']):
            continue
        out.append(dict(term=row['term'], count=n, plain=row['plain'], handling=row['handling'], tier=row['tier']))
    return out

if __name__ == '__main__':
    lex = parse_lexicon()
    print(f"{len(lex)} lexicon rows parsed")
