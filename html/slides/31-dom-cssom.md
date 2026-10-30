---
layout: pageBar
---

# DOM, CSSOM, render tree

```html
<h1>Tasks</h1>
<p class="hidden">Secret</p>
```

```css
.hidden { display: none; }
```

- Both nodes exist in the **DOM**.
- The hidden paragraph does not produce a box in the **render tree**.

<!--
- DOM represents document content and structure, not rendered pixels.
- CSSOM represents CSS rules and values used during style computation.
- display:none removes the element from layout and normal rendering.
- visibility:hidden differs: it generally retains its layout space.
- The accessibility tree is a different representation and should not be conflated with the render tree.
-->
