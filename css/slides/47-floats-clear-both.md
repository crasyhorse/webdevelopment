---
layout: pageBarTwoCols
class: content-offset
---

# Floats & Clearing

::left::

```html
<article class="task-card">
  <img class="task-card__icon task-card__icon--left" src="task.svg">
  <p>Review the pull request</p>
  <div class="task-card__next-task">Next task</div>
</article>
```

```css
.task-card__icon { width: 7rem; height: 7rem; }
.task-card__icon--left {
  float: left; margin-right: 1rem;
}
.task-card__next-task { clear: both; }
```

::right::

<div>
<img
  src="/images/float-clear-both.svg"
  alt="A task icon floats left while text appears beside it. A following green Next task box uses clear: both, so it starts below the bottom of the floating icon."
  class="w-full mx-auto block"
  style="max-height: 45vh; object-fit: contain;"
/>
</div>

::below::
<p style="text-align: center;"><code>clear: both</code> forces the next <strong>block below earlier left- or right-floating elements.</strong></p>

<style>
.slidev-code {
  font-size: 0.75rem !important;
  line-height: 1.2 !important;
}
</style>

<!--
- The icon is floated left, so the short paragraph occupies the space on
  the right while the float is still present.
- Without the `clear` property, the following block could start alongside
  the floating image instead of beneath it.
- With `clear: both`, the top border edge of the next-task block is moved
  below any relevant preceding left and right floats.
- `clear: left` and `clear: right` restrict the behavior to one float direction.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/clear
-->
