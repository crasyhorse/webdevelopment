---
layout: pageBarTwoCols
class: content-offset
---

# Color Contrast

::left::

<div>
  <img src="/images/contrast-low.svg" alt="Gray text on white with insufficient contrast" class="block mx-auto w-full" style="max-height: 39vh; object-fit: contain;" />
</div>

::right::

<div>
  <img src="/images/contrast-high.svg" alt="Dark slate text on white with sufficient contrast" class="block mx-auto w-full" style="max-height: 39vh; object-fit: contain;" />
</div>

::below::

- WCAG AA: normal text **4.5:1**, large text **3:1**.
- Required non-text UI information and graphical objects: **3:1**.

<!--
- Both illustrations show the same Task Manager card; only the text color changes: `#AAAAAA` on white fails at 2.32:1, `#263C55` on white passes at 11.29:1.
- Contrast is measured between the actual rendered foreground and background — opacity, overlays and background images change the result.
- Large text means at least 18pt or 14pt bold (24px / ~18.67px); it only needs 3:1 because the thicker strokes stay readable.
- The 3:1 non-text rule (WCAG 1.4.11) covers UI boundaries, icons and focus indicators — relevant for the focus styles later in this part.
- DevTools: pick the text color with the eyedropper and check the contrast ratio in the color picker; test hover and focus states too.
- Color harmony does not imply contrast — a "beautiful" palette can still fail. See WebAIM Contrast Checker and WCAG 1.4.3.
-->

