---
layout: pageBar
class: content-offset
---

# CSS Units — Choose the Right Reference

| Unit | Relative to | Typical use |
|---|---|---|
| `px` | CSS reference pixel | Borders, small fixed details |
| `rem` | Root element's font size | Component spacing and readable sizing |
| `em` | Element's font size (property-dependent) | Component-relative padding |
| `%` | Property-dependent containing reference | Fluid widths |
| `vw` / `vh` | Viewport dimensions | Viewport-related sizing |

<!--
- The percentage reference is *not* universally the parent width. For instance,
  percentage `height` has its own rules and may require a definite containing height.
- `rem` usually follows the root `font-size`; the browser default is often 16px, but users can change it.
- `em` for `font-size` is relative to the parent font size, whereas `em` for `padding` is based on the element's own computed font size.
-->
