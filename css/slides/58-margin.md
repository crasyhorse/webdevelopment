---
layout: pageBarTwoCols
class: content-offset
---

# Margin — Space Outside the Box

::left::

**Margin** creates space **outside the border**, separating neighboring boxes.

```css
.task-card {
  margin-bottom: 1.5rem;
  border: 2px solid #64748b;
}
```

**Physical margin attributes**

```css
margin: 1rem;        /* all sides */
margin-left: 1rem;   /* left side only */
margin-right: 1rem;  /* right side only */
margin-top: 1rem;    /* top side only */
margin-bottom: 1rem; /* bottom side only */
```

::right::

<div>
  <img
    src="/images/box-margin.svg"
    alt="Two stacked task cards, with the orange margin-bottom gap highlighted between their borders."
    class="block mx-auto w-full"
    style="max-height: 47vh; object-fit: contain;"
  />
</div>

<!--
- Margins are transparent and outside the border; backgrounds do not fill them.
- The `margin` property does not contribute to the element's border-box width or height.
- Four-value shorthand is clockwise: top, right, bottom, left (TRBL).
- Three values: top | horizontal | bottom. Two values: vertical | horizontal. One value: all sides.
- Unlike padding, margins can be negative.
-->
