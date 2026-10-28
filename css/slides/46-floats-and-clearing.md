---
layout: pageBarTwoCols
class: content-offset
---

# Floats — Left and Right

::left::

```html
<article class="task-card">
  <img class="task-card__icon task-card__icon--left" src="task.svg">
  <p>Review the pull request</p>
</article>

<article class="task-card">
  <img class="task-card__icon task-card__icon--right" src="task.svg">
  <p>Review the pull request</p>
</article>
```

<div class="mt-3"></div>

```css
.task-card__icon { width: 7rem; height: 7rem; }
.task-card__icon--left {
  float: left; margin-right: 1rem;
}
.task-card__icon--right {
  float: right; margin-left: 1rem;
}
```

::right::

<div>
<img
  src="/images/float-left-right.svg"
  alt="Two task cards: the first has a floated icon on the left with text flowing to its right; the second has a floated icon on the right with text flowing to its left."
  class="w-full mx-auto block"
  style="max-height: 45vh; object-fit: contain;"
/>
</div>

::below::

<p style="text-align: center;"><code>float: left</code> and <code>float: right</code> allow text to <strong>flow beside an element.</strong></p>

<style>
.slidev-code {
  font-size: 0.75rem !important;
  line-height: 1.2 !important;
}
</style>

<!--
- A floated image moves to the corresponding edge of its containing block.
- Text in the same article flows beside the float when sufficient horizontal
  space remains, then continues beneath it if there is more text.
- Floats influence inline content and are not suitable as a modern page layout
  system. Use Flexbox or Grid for application layouts.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/float
-->
