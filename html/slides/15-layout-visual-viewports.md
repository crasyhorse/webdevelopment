---
layout: pageBar
class: content-offset
---

# Layout and visual viewports

<img src="/images/layout-visual-viewports.svg" alt="Layout and visual viewports before and after 2× pinch zoom" class="block mx-auto" style="height: 380px; max-width: 100%; object-fit: contain;" />

<div class="mt-10"></div>

```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```

<!--
- The left diagram shows a page configured for a mobile device whose layout viewport is 390 CSS pixels wide.
- At initial scale 1, the visual and layout viewports generally coincide on a mobile browser.
- The green dashed outline on the right represents the layout viewport; blue represents the visual viewport after pinch zoom.
- Pinch zoom generally does not change layout viewport dimensions, so the page does not necessarily reflow.
- At 2x zoom the visual viewport width can be roughly half the layout viewport width, e.g. 195 versus 390 CSS pixels.
- The viewport meta element requests a device-width layout viewport and an initial zoom scale of 1; it does not itself provide responsive styling.
-->
