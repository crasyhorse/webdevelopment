---
layout: pageBarTwoCols
class: content-offset
---

# Fixed Units vs Percentages

::left::

- **Fixed lengths** do not scale with the parent's width.
- **Percentage widths** depend on their containing block.
- With a **400px container**, `50%` means **200px**. `300px` stays **300px**.

::right::

<div>
  <img src="/images/units-fixed-percent.svg" class="block mx-auto w-full" style="max-height: 49vh; object-fit: contain;" alt="Inside equal 400px containers a fixed 300px box stays 300px and a 50-percent box is 200px." />
</div>

::below::
<div class="mt-5"></div>

<p style="text-align: center;">Use <code>%</code> for fluid sizing; use <code>px</code> for deliberate fixed details.</p>

<!--
- The percentage reference depends on the CSS property; this example is width.
- 1pt is 1/72 of a CSS inch; 1 CSS inch is defined as 96 CSS px.
- CSS pixels are reference pixels rather than always physical device pixels.
- Unlike percent, an explicit 300px width does not adjust to its container and can overflow a narrow one.
-->
