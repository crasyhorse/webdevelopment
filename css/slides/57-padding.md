---
layout: pageBarTwoCols
class: content-offset
---

# Padding — Space Inside the Box

::left::

**Padding** creates space between the **content** and the **border**.

```css
.task-card {
  padding: 1rem;
  border: 2px solid #64748b;
}
```

**Physical padding attributes**

```css
padding: 1rem;        /* all sides */
padding-left: 1rem;   /* left side only */
padding-right: 1rem;  /* right side only */
padding-top: 1rem;    /* top side only */
padding-bottom: 1rem; /* bottom side only */
```

::right::

<div>
  <img
    src="/images/box-padding.svg"
    alt="Task card with its green padding highlighted between blue content and dark border."
    class="block mx-auto w-full"
    style="max-height: 47vh; object-fit: contain;"
  />
</div>

<!--
- Padding is inside the border; a background color or image normally extends through the padding area.
- In content-box sizing, padding increases the overall size; in border-box sizing, it is included in the specified width.
- For two-value shorthand: the first value controls top/bottom, the second left/right.
- Three values: top | horizontal | bottom. Four values: top | right | bottom | left (TRBL, clockwise).
- Compare padding with margin in the next slide.
-->
