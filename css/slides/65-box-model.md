---
layout: pageBar
class: content-offset
---

# The CSS Box Model

<div>
    <img
    src="/images/box-model-diagram.svg"
    alt="The CSS box model, with nested areas: blue content, green padding, ocher border, and orange margin."
    class="w-full mx-auto block"
    style="max-height: 35vh; object-fit: contain;"
    />
</div>

- <strong style="color: #4C7186">Content</strong> holds the text or image.
- <strong style="color: #6C7D2C">Padding</strong> creates inner space.
- <strong style="color: #8C7428">Border</strong> surrounds padding.
- <strong style="color: #9A6A2C">Margin</strong> separates neighboring boxes.

<!--
- The box model consists of four nested areas: content, `padding`, `border`, and `margin`.
- **Content** holds text or replaced elements such as images.
- **Padding** separates content from its `border`; an element's background extends through
  the `padding` area by default.
- **Borders** surround `padding` and content.
- **Margins** create space outside the `border`. Margins are transparent.
- Inspect a `.task-card` in DevTools and hover its box-model diagram to show the
  computed dimensions of each area.
- Note that some boxes have zero `padding`, `border`, or `margin`; all four areas
  are not necessarily visible.
- MDN: https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Box_model
-->
