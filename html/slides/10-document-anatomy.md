---
layout: pageBarTwoCols
class: content-offset
---

# Anatomy of an HTML document

::left::

- `<!doctype html>` — standards mode
- `<html lang="en">` — document root and language
- `<head>` — document metadata
- `<body>` — page content

::right::

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Task Manager</title>
  </head>
  <body>
    <h1>My Tasks</h1>
  </body>
</html>
```

<!--
- Start from the outer document structure rather than individual content elements.
- The doctype is a compatibility switch for standards mode, not a version selector.
- The html element is the root of the document and carries its primary language.
- The head holds metadata, while body holds the main document content.
- Explain that metadata can affect browser behavior without appearing as body text.
- Elements omitted from source can sometimes be inserted by the parser, as seen in Part I.
-->
