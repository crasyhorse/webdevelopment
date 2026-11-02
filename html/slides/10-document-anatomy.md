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
    <p lang="de">Erste Arbeit</p>
    <p lang="es">Segunda tarea</p>
  </body>
</html>
```

<!--
- The html element is the root of the document and carries its primary language.
- The global attribute "lang" declares the default language of the document.
- Important for Screen readers (pronounciation), Browsers (hyphenation) or Search engines.
- Attributes are global if they can be put on any tag not only on specific ones.
- The head holds metadata, while body holds the main document content.
- Explain that metadata can affect browser behavior without appearing as body text.
- Elements omitted from source can sometimes be inserted by the parser, as seen in Part I.
-->
