---
layout: pageBarTwoCols
class: content-offset
---

# Fixed Width vs Percentage Width

::left::

**What happens when the parent gets narrower?**

```css
.panel {
  width: 400px; /* then 240px */
}

/* Both items also use panel__item. */
.panel__item--fixed { width: 300px; }
.panel__item--fluid { width: 75%; }
```

- **`300px`** stays **300px** — even when the parent is only 240px wide.
- **`75%`** means **75% of the parent's content width**: 300px → 180px.

::right::

<div>
  <img
    src="/images/units-fixed-percent.svg"
    alt="At 400px parent width, both 300px fixed and 75% fluid child boxes are 300px wide. At 240px parent width, fixed stays 300px and overflows; percentage becomes 180px and fits."
    class="block mx-auto w-full"
    style="max-height: 52vh; object-fit: contain;"
  />
</div>

<!--
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/width
-->
