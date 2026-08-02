#!/usr/bin/env python3
"""Extract every PDF in sources/ to plain text in .corpus/, for search.

The source documents are PDFs and the qmd collection mask is "**/*.md", so
without this step semantic and keyword search cover the vault's own notes and
none of the material those notes are about. The output is a derived artifact:
.corpus/ is gitignored and regenerated from sources/, so it cannot drift from
the originals the way a committed copy could.

Page boundaries are preserved as "===PAGE n===" markers, because source anchors
in claims cite locations and a search hit is only useful if it can be traced
back to one. Extraction is skipped when the output is newer than its PDF, so
running this repeatedly is cheap.

Run directly, or via scripts/bootstrap.sh which calls it.
"""
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "sources")
OUT = os.path.join(ROOT, ".corpus")


def main() -> int:
    try:
        from pypdf import PdfReader
    except ImportError:
        print("pypdf is not installed. Run: pip install pypdf", file=sys.stderr)
        print("If the import fails on _cffi_backend, the container's cryptography", file=sys.stderr)
        print("package is broken; repair it with: pip install --ignore-installed cryptography cffi", file=sys.stderr)
        return 1

    if not os.path.isdir(SRC):
        print(f"No sources directory at {SRC}", file=sys.stderr)
        return 1

    os.makedirs(OUT, exist_ok=True)
    pdfs = sorted(f for f in os.listdir(SRC) if f.lower().endswith(".pdf"))
    if not pdfs:
        print("No PDFs in sources/; nothing to extract.")
        return 0

    written = skipped = failed = 0
    for name in pdfs:
        src_path = os.path.join(SRC, name)
        out_path = os.path.join(OUT, name[:-4] + ".md")
        if os.path.exists(out_path) and os.path.getmtime(out_path) >= os.path.getmtime(src_path):
            skipped += 1
            continue
        try:
            reader = PdfReader(src_path)
            parts = []
            for i, page in enumerate(reader.pages, start=1):
                parts.append(f"\n===PAGE {i}===\n" + (page.extract_text() or ""))
            with open(out_path, "w") as fh:
                fh.write(f"# {name[:-4]}\n\nExtracted from sources/{name}. Derived artifact; do not edit.\n")
                fh.write("".join(parts))
            written += 1
        except Exception as exc:  # noqa: BLE001 - report and continue to the next file
            print(f"  failed: {name}: {exc}", file=sys.stderr)
            failed += 1

    print(f"Corpus text: {written} extracted, {skipped} already current, {failed} failed -> .corpus/")
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main())
