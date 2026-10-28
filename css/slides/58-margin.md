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

**Shorthand order: top, right, bottom, left**

```css
margin: 1rem 2rem 3rem 4rem;
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
- Margin does not contribute to the element's border-box width or height.
- Four-value shorthand is clockwise: top, right, bottom, left (TRBL).
- Three values: top | horizontal | bottom. Two values: vertical | horizontal. One value: all sides.
- Adjacent vertical margins between normal-flow block elements can collapse; this is a simplified illustration showing the gap.
- Unlike padding, margins can be negative and can use auto in certain layouts.
-->
