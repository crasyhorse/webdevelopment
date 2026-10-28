---
layout: pageBar
class: content-offset
---

# Logical Spacing

<div>
  <img
    src="/images/logical-spacing-sides.svg"
    alt="Diagrams of LTR and RTL boxes showing four logical sides. Inline-start and inline-end change physical sides when writing direction reverses, while block-start and block-end stay at top and bottom for horizontal writing. Padding is inside and margin outside the border."
    class="block mx-auto w-full"
    style="max-height: 35vh; object-fit: contain;"
  />
</div>

<div class="mt-3"></div>

- **`inline-start` / `inline-end`** follow reading direction
- **`block-start` / `block-end`** follow the direction of text blocks.
- Logical spacing values exist for **padding** and **margin**

<!--
- The previous slide showed one comparison: physical `padding-left` versus logical `padding-inline-start`.
- Here we generalize: both `padding` and `margin` support `inline-start`, `inline-end`, `block-start` and `block-end`.
- Think of the inline axis as the line of text. For English LTR, its start is left; in Arabic RTL, its start is right.
- For horizontal writing, `block-start` is top and `block-end` is bottom. In vertical writing modes these mappings change.
- Use the colors in the graphic to distinguish padding (green, inside border) from margin (orange, outside border).
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_logical_properties_and_values
-->
