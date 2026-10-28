---
layout: pageBar
class: content-offset
---

# CSS pixels vs. device pixels

<img src="/images/css-pixels-dpr.svg" alt="Three equally sized CSS pixels: at DPR 1 the square contains one device pixel, at DPR 2 a 2-by-2 grid, and at DPR 3 a 3-by-3 grid." class="block mx-auto" style="height: 265px; max-width: 100%; object-fit: contain;" />

<div class="mt-3"></div>

| DPR = 1 | DPR = 2 | DPR = 3 |
| :---: | :---: | :---: |
| 1 × 1 device pixel | 2 × 2 device pixels | 3 × 3 device pixels |

<div class="mt-3"></div>

- **CSS pixel:** A logical unit used for page layout.
- **Device pixel:** A physical display pixel.

<!--
- Recall the earlier example of a phone with a 390 CSS-pixel-wide viewport. CSS pixels are not necessarily physical pixels.
- This image models the same one CSS-pixel area at device pixel ratios (DPR) of 1, 2, and 3.
- At DPR 2, one CSS pixel spans approximately 2 physical pixels per axis, or 4 physical pixels in area, under the simplified model.
- A device can have a high-density display while a web page keeps the same CSS layout dimensions.
- window.devicePixelRatio gives the effective ratio of physical device pixels to CSS pixels for the current browser environment.
- Browser page zoom may change devicePixelRatio; pinch zoom generally changes the visual viewport rather than this ratio.
- This diagram intentionally omits sampling, scaling, and rasterization details; actual rendering is more nuanced.
- Ask participants: Why can the same CSS font size look sharper on a high-density display?
-->
