---
layout: pageBar
class: content-offset
---

# Understanding the virtual viewport

<img src="/images/virtual-viewport.svg" alt="A 980px wide virtual layout viewport extending beyond the phone versus a 390px device-width layout viewport" class="block mx-auto" style="height: 430px; max-width: 100%; object-fit: contain;" />

<!--
- On mobile, a document without viewport metadata may be laid out using a virtual viewport that is wider than the physical screen.
- The left example depicts a virtual/layout viewport of 980 CSS pixels, a common illustrative legacy width, not a universal standard value.
- Mobile browsers can scale such a wide desktop-oriented page down to fit the screen, so text may appear tiny.
- The green rectangle deliberately extends beyond the screen to illustrate the virtual width; real browsers typically scale the result down.
- With width=device-width, the browser is asked to use the device's CSS-pixel width for the layout viewport, as on the right at 390 CSS pixels.
- The blue rectangle fills the screen width, but CSS is still needed to adapt complex pages and avoid overflowing content.
- Both graphics are conceptual diagrams, not to-scale screenshots or measurements of actual phones.
- Ask participants how the viewport meta element changes initial mobile layout without automatically making a page responsive.
-->
