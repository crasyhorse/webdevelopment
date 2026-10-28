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
- `rem` usually follows the root font-size; the browser default is often 16px, but users can change it.
- `em` for font-size is relative to the parent font size, whereas `em` for padding is based on the element's own computed font size.
- Percentages are not universally relative to the same dimension; clarify percentage width versus percentage height.
- Viewport units include newer variants such as dvh, but leave these for responsive design.
-->
