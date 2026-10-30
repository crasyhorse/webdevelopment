---
layout: pageBar
---

# Layout, paint, compositing

- **Layout:** determine dimensions and positions.
- **Paint:** produce drawing commands for backgrounds, text, borders, etc.
- **Compositing:** combine rendered layers into the final image.
- A visual change does **not** always require all three steps.

<!--
- Changing width may require layout plus later work.
- Changing color generally needs repaint but not geometry recalculation.
- Transform or opacity animations may be handled through compositing under suitable conditions.
- Browser behavior depends on implementation and layer decisions.
- Do not claim the compositor always avoids painting; measure with browser tools.
-->
