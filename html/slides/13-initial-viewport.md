---
layout: pageBar
class: content-offset
---

# Initial viewport

<img src="/images/initial-layout-viewports.svg" alt="Diagram comparing the initial viewport before viewport overrides and the layout viewport after configuration; both are 390 CSS pixels wide in this example" class="block mx-auto" style="height: 380px; max-width: 100%; object-fit: contain;" />

<div class="mt-10"></div>

```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```

<!--
- Compare the gray initial viewport on the left with the green layout viewport on the right.
- In this example both are 390 CSS pixels wide; viewport configuration does not necessarily change the width.
- Explain that width=device-width requests a layout viewport width matching the device width in CSS pixels, not physical screen pixels.
- initial-scale=1.0 requests an initial zoom level of 1.
-->
