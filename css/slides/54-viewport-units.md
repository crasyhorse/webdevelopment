---
layout: pageBarTwoCols
class: content-offset
---

# Viewport Units — `vw` & `vh`

::left::

- **`1vw`** = 1% of the viewport width.
- **`1vh`** = 1% of the viewport height.

```css
.hero {
  width: 50vw;
  height: 30vh;
}
```

For a **1000 × 600px viewport**:

- Width: `50vw` = **500px**
- Height: `30vh` = **180px**

::right::

<div>
  <img src="/images/units-vw-vh.svg" class="block mx-auto w-full" style="max-height: 49vh; object-fit: contain;" alt="A 1000 by 600px viewport containing a box that is 500px wide and 180px tall." />
</div>

::below::

- Viewport units respond to the **browser viewport**, not the parent's dimensions.

<!--
- Viewport refers to the visible browser layout viewport, not the width of the parent element.
- vw/vh can be useful for full-screen sections, large banners and viewport-based layouts.
- On mobile browser chrome can change the visible area. Mention dvh/svh/lvh if asked.
- Very small viewports can make fixed vh heights unsuitable for long content.
-->
