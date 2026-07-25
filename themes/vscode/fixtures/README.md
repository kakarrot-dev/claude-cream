# Visual validation fixtures

Open this folder in Cursor or VS Code and switch through:

1. Claude Cream
2. Claude Cream Dark
3. Claude Cream Dark Dimmed
4. Claude Cream High Contrast
5. Claude Cream Dark High Contrast

## Check each file

- `visual-test.py`: decorator, class, parameter, type hint, string, number, exception and regexp.
- `visual-test.ts`: interface, generic, enum, async function, property, regexp and deprecated JSDoc.
- `visual-test.json`: property names, strings, numbers, booleans, null and URLs.
- `visual-test.md`: headings, lists, quote, emphasis, deletion, link, inline code, fenced code and table.
- `visual-test.diff`: file headers, hunk, inserted, deleted and unchanged lines.

Use `Developer: Inspect Editor Tokens and Scopes` to inspect at least one
function, type, property, regexp, JSON property, Markdown inline code and Diff
line.

Also inspect Command Palette, Quick Input, a notification, Git Diff, Terminal,
Peek Definition or Debug. Current line, selection, word highlight, bracket
match and find match must remain distinguishable.
