---
layout: pageBar
class: content-offset
---

# Understanding Color — Oklab

<div>
  <img src="/images/oklab-space.svg" alt="Oklab axes: vertical lightness from black to white, a green to red axis and a blue to yellow axis." class="block mx-auto w-full" style="max-height: 38vh; object-fit: contain;" />
</div>

- **HSL** matches how we *name* colors: hue, saturation, lightness.
- **Oklab** matches how we *see* them: equal steps look equally different.

<!--
- Oklab stores a color as L (black to white) plus two opponent axes, green↔red (a) and blue↔yellow (b) — how human color vision actually contrasts colors.
- Unlike HSL lightness, equal numeric steps in Oklab look equally different; that perceptual uniformity is the whole point.
- Consequence: mixing or stepping colors in Oklab (or its cylindrical form Oklch) yields even, clean palettes; the same steps in sRGB or HSL turn muddy or shift brightness unexpectedly.
- Where it appears in CSS: color-mix(in oklab, …), oklch(), lab() — used later in Part VIII to derive tints and shades from one token.
- Keep the mental model simple: HSL for talking about color, Oklab for computing with it.
-->
