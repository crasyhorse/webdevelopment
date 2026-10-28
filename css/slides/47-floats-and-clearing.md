---
layout: pageBarTwoCols
class: content-offset
---

# Floats — Left and Right

::left::

```html
<article class="task">
  <img class="icon left" src="task.svg">
  <p>Review the pull request</p>
</article>

<article class="task">
  <img class="icon right" src="task.svg">
  <p>Review the pull request</p>
</article>
```

```css
.icon { width: 7rem; height: 7rem; }
.left  { float: left; margin-right: 1rem; }
.right { float: right; margin-left: 1rem; }
```

::right::

<img
  src="/images/float-left-right.svg"
  alt="Two task cards: the first has a floated icon on the left with text flowing to its right; the second has a floated icon on the right with text flowing to its left."
  class="w-full mx-auto block"
  style="max-height: 45vh; object-fit: contain;"
/>

::below::

<p style="text-align: center;"><code>float: left</code> and <code>float: right</code> allow text to <strong>flow beside an element.</strong></p>

<!--
- A floated image moves to the corresponding edge of its containing block.
- Text in the same article flows beside the float when sufficient horizontal
  space remains, then continues beneath it if there is more text.
- The example deliberately uses the same HTML structure and sentence twice;
  only the float direction and margin side change.
- Floats influence inline content and are not suitable as a modern page layout
  system. Use Flexbox or Grid for application layouts.
- In the next slide, explain how clear: both stops following content from
  sitting next to earlier floats.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/float
-->
