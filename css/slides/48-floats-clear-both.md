---
layout: pageBarTwoCols
class: content-offset
---

# Floats — Clearing Both Sides

::left::

```html
<article class="task">
  <img class="icon left" src="task.svg">
  <p>Review the pull request</p>
  <div class="next-task">Next task</div>
</article>
```

```css
.icon { width: 7rem; height: 7rem; }
.left  { float: left; margin-right: 1rem; }
.next-task { clear: both; }
```

::right::

<img
  src="/images/float-clear-both.svg"
  alt="A task icon floats left while text appears beside it. A following green Next task box uses clear: both, so it starts below the bottom of the floating icon."
  class="w-full mx-auto block"
  style="max-height: 45vh; object-fit: contain;"
/>

::below::
<p style="text-align: center;"><code>clear: both</code> forces the next <strong>block below earlier left- or right-floating elements.</strong></p>

<!--
- The icon is floated left, so the short paragraph occupies the space on
  the right while the float is still present.
- Without the clear property, the following block could start alongside
  the floating image instead of beneath it.
- With clear: both, the top border edge of the next-task block is moved
  below any relevant preceding left and right floats.
- clear: left and clear: right restrict the behavior to one float direction.
- clear: both does not contain a float inside its parent. If an element
  needs to enclose its floated children, display: flow-root is a useful
  modern approach.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/clear
-->
