---
layout: pageBar
class: content-offset
---

# What triggers rendering work?

Different CSS changes can require different rendering phases.

| CSS change | Typical rendering work |
|---|---|
| `width` / `height` | Layout → Paint → Composite |
| `background-color` | Paint → Composite |
| `transform` / `opacity` | Often Composite only |

- **Geometry changes** can affect other elements.
- **Visual changes** do not necessarily require layout.
- **Compositor-only changes** can avoid layout and repainting.

<!--
- The rendering pipeline does not necessarily execute every phase after each change.
- Changing width or height can require recalculating layout geometry.
- Changing background-color usually requires painting but not layout.
- Changing transform or opacity can often be handled by compositing when the element is appropriately composited.
- Browser optimizations and layer decisions determine the actual rendering work; these are typical patterns, not guarantees.
- Avoid claiming that a CSS property always triggers a particular sequence.
- Explain why unnecessary layout and painting can affect animation performance.
- Demonstrate the differences using the browser's Performance panel.
- Ask participants which change they expect to be cheaper: modifying width or applying translateX().
-->
