---
layout: pageBar
class: content-offset
---

# Metadata vs. visible content

| **In `<head>`** | **In `<body>`** |
| --- | --- |
| `<title>` — browser tab and bookmarks | `<h1>` — page heading |
| `<meta charset="utf-8">` — text encoding | `<p>` — paragraph |
| `<meta name="viewport" ...>` — viewport configuration | `<a>` / `<button>` — interaction |
| `<link rel="stylesheet" ...>` — resource link | `<nav>` / `<main>` — page structure |

<!--
- The head contains machine-readable document metadata rather than the page's visible content.
- The title identifies the document in browser tabs and bookmarks; it is not a heading in the body.
- The charset declaration tells the browser how the document's characters are encoded.
- Viewport metadata influences mobile viewport behavior; detailed responsive design comes later.
- Link references external resources such as stylesheets, but is not itself visible body content.
- Emphasize the conceptual separation between metadata and semantic page content.
-->
