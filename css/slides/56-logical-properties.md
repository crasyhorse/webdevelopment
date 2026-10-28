---
layout: pageBarTwoCols
class: content-offset
---

# Logical Spacing Properties

::left::

**Physical directions**

```css
.task-card {
  margin-left: 1rem;
  padding-top: 1rem;
}
```

These name a physical side of the screen.

::right::

**Writing-mode-aware directions**

```css
.task-card {
  margin-inline-start: 1rem;
  padding-block-start: 1rem;
  padding-inline: 1.5rem;
}
```

These follow the document's inline/block axes.

::below::

- Logical properties adapt better to different writing directions and modes.

<!--
- In English horizontal text: inline is usually left-to-right, and block is top-to-bottom.
- In right-to-left text, inline-start maps to the right instead of the left.
- Logical equivalents exist for dimensions: inline-size and block-size.
- Keep the topic introductory rather than exploring every writing mode.
-->
