---
layout: pageBarTwoCols
class: content-offset
---

# From source to a DOM tree

**HTML source → HTML parser → DOM tree**

::left::

- **Source:** markup from a document or HTTP response
- **Parser:** tokenization, tree construction, error recovery
- **DOM:** document, element, and text nodes

::right::

```html {class:'text-3xl'}
<main>
  <h1>Tasks</h1>
  <button>Save</button>
</main>
```
::below::

<Button 
    url="http://localhost:5500/html/demo/implicit-tbody.html"
    type="demo"
/>

<img
    src="/images/html-parser-dom-tree-comic.svg"
    class="w-[500px] block mx-auto"
/>

<!--
- An HTML response or local file provides the character stream that the browser parses.
- The parser tokenizes markup and constructs document, element, and text nodes.
- The DOM is a live tree structure exposed through browser APIs and Developer Tools.
- The sample creates a main element containing a heading and a button.
- Distinguish the DOM from the rendered pixels; layout and painting will be covered later.
-->
