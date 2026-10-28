---
layout: pageBar
class: content-offset
---

# CSS Color Values

| Format | Example | Meaning |
|---|---|---|
| **Hex** | `#333333` | Six hexadecimal digits: red, green, blue (`00`–`FF`). |
| **Short hex** | `#333` | Three-digit shorthand for `#333333` (each digit doubles). |
| **RGB** | `rgb(51, 51, 51)` | Red, green and blue channels from `0` to `255`. |
| **RGBA** | `rgba(51, 51, 51, 0.5)` | RGB plus alpha: `0` transparent, `1` opaque. |
| **HSL** | `hsl(0, 0%, 20%)` | Hue in degrees, saturation and lightness in percent. |
| **HSLA** | `hsla(0, 0%, 20%, 0.5)` | HSL plus an alpha channel. |

<div class="flex items-center justify-center gap-5 mt-5">
  <span class="font-semibold">Same dark gray:</span>
  <span class="inline-block w-16 h-9 rounded-md border border-gray-400" style="background: #333333" aria-label="Dark gray example"></span>
  <code>#333333</code> <span>=</span> <code>#333</code> <span>=</span> <code>rgb(51, 51, 51)</code>
</div>

<!--
- CSS defines color values; they are used in properties such as color, background-color and border-color.
- A hex color has one pair of digits for each RGB channel; #333 expands to #333333. #333 is NOT equivalent to #030303.
- All fully opaque formats shown as #333333, #333, rgb(51, 51, 51), and hsl(0, 0%, 20%) specify the same color.
- Alpha indicates opacity, not lightness. A semi-transparent color is blended with what is behind it; the visible result depends on the background.
- HSL is an alternative way to describe colors. Saturation 0% yields gray; hue is irrelevant for that gray.
- Modern CSS also allows rgb(51 51 51 / 50%) and hsl(0 0% 20% / 0.5). rgba() and hsla() remain valid aliases.
- Explain that keywords (e.g. red, transparent, currentColor) also exist, but this slide focuses on the requested numeric formats.
- Ask attendees to choose a text color with sufficient contrast against the background; check readability using DevTools.
- This slide precedes Exercise 01, where colors are first applied independently.
-->
