---
layout: pageBar
class: content-offset
---

# Normal Flow & Display

<div>
    <img
    src="/images/display-attribute.svg"
    alt="Comparison of CSS display values: a full-width red block, three content-sized blue inline boxes, and two differently sized green inline-block boxes."
    class="w-full mx-auto block" style="max-height: 38vh; object-fit: contain;"
    />
</div>

- `display: block` starts on a new line and fills the available width by default.
- `display: inline` stays in the text flow; its width follows its content.
- `display: inline-block` sits alongside other content but accepts explicit `width` and `height`.
- `display: none` remove the element from the page completely.

<!--
- Start with the red rectangle: a block-level box normally starts on a new line and
  stretches to fill the available inline space of its containing block.
- Compare the three blue boxes: inline boxes take up only as much horizontal space
  as their content needs. Setting width or height on ordinary inline boxes has
  no effect.
- Compare the green boxes: inline-block boxes can sit beside each other while
  still accepting explicit dimensions, padding, and margins.
- Note that the illustration simplifies the behavior of inline formatting;
  real inline content may wrap across lines.
- Normal flow is the browser's default arrangement.
- Briefly distinguish display: none: it removes the element's box from layout,
  unlike the three display modes shown in the illustration.
-->
