---
layout: pageBarTwoCols
class: content-offset
---

# Box Sizing — `content-box`

::left::

```css
.card {
  box-sizing: content-box;
  width: 300px;
  padding: 20px;
  border: 4px solid;
}
```

**Declared width = content width**

```text
300 + 20 + 20 + 4 + 4
= 348px
```

- Content: **300px**
- Padding: **20px** on each side
- Border: **4px** on each side
- **Total rendered width: 348px**

::right::

<div>
  <img
    src="/images/box-sizing-content-box.svg"
    alt="Content-box diagram: 300px content, 20px padding per side and 4px border per side produce a total width of 348px."
    class="w-full mx-auto block"
    style="max-height: 51vh; object-fit: contain;"
  />
</div>

::below::

`content-box`: The declared width applies only to the content area. Padding and borders increase the total box width.

<!--
- This and the next slide deliberately use exactly the same width, padding, and
  border declarations. Only box-sizing changes.
- In content-box, the declared width applies to the content area.
- Horizontal padding adds 20px on each side; the border adds 4px on each side.
- Therefore the border-box width is 300 + 40 + 8 = 348px.
- Margins are always outside the border box and are not included here.
- The diagram is schematic: labels are not positioned to represent pixels
  exactly, but the widths of the nested rectangles are proportional.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing
-->
