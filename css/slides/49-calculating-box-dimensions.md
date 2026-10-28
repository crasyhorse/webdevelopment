---
layout: pageBarTwoCols
class: content-offset
---

# Calculating Box Dimensions

::left::

```css
.task-card {
  width: 300px;
  padding: 20px;
  border: 4px solid steelblue;
  margin: 12px;
  box-sizing: content-box;
}
```

**Rendered border-box width:**

`300 + 2 × 20 + 2 × 4 = 348px`

::right::

<img src="/images/box-sizing-comparison.svg" alt="A comparison showing content-box adds padding and borders outside the declared width, whereas border-box includes them inside it." class="w-full mx-auto block" style="max-height: 38vh; object-fit: contain;" />

**Including margins:** the outer occupied width is `348 + 2 × 12 = 372px` when those margins apply.

::below::

- `width` means **content width** with `content-box`; margins remain outside the box.

<!--
- Ask the group to calculate before showing the result.
- Assume left and right padding/borders/margins all have the stated values.
- Clarify that layout margins can collapse vertically, but the horizontal margins here do not.
-->
