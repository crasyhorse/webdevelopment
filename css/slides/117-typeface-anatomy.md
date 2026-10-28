---
layout: pageBar
class: content-offset
---

# Anatomy of a Typeface

<div>
  <img src="/images/typography-anatomy.svg" alt="Schematic glyphs with baseline, x-height, cap height, ascender and descender guides" class="block mx-auto w-full" style="max-height: 20vh; object-fit: contain;" />
</div>

<div>
  <img src="/images/typography-em-square.svg" alt="An em square of 1000 font units scaled to 20 CSS pixels, with an example cap height of 14 pixels" class="block mx-auto w-full" style="max-height: 20vh; object-fit: contain;" />
</div>

<!--
- Explain the baseline: the reference line on which most Latin glyphs sit. The descenders of letters such as p, g and y extend below it.
- The x-height describes the height of lowercase x; the cap height describes uppercase letters such as H. Ascenders of letters such as b and h extend above the x-height. The ascender and cap heights may differ by typeface.
- The em square is an imaginary square defining the font’s design scale. Fonts commonly use 1000 or 2048 internal units per em. It is not a bounding box for individual glyphs.
- With `font-size: 20px`, one em corresponds to 20 CSS pixels. In the schematic example, a cap height of 700 out of 1000 font units becomes 14px. Glyphs can extend beyond the em square.
- Two fonts at the same `font-size` can therefore look different in size and density. The CSS `em` length unit normally refers to the computed font size of the element.
- Font metrics describe the space above and below the baseline. The illustration is schematic; exact metrics and glyph outlines depend on the font.
- Introduce `line-height`: the height contribution used for inline layout. In a simple paragraph it controls the distance between consecutive baselines. It is not the height of the visible letters.
- With `font-size: 16px` and `line-height: 1.5`, the used line height is 24px. The extra space helps separate lines; glyphs may extend beyond their line box.
- A font with a large x-height may look more crowded at the same line height. Compare actual text, including ascenders and descenders, before choosing the spacing.
-->
