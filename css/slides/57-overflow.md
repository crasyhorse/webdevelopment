---
layout: pageBarTwoCols
class: content-offset
---

# Overflow — When Content Does Not Fit

::left::

```css
.task-list {
  max-height: 14rem;
  overflow-y: auto;
}
```

**Overflow options:**

- `visible` — content may paint outside.
- `auto` — scrolling when necessary.
- `hidden` — clipped; programmatic scrolling remains possible.
- `clip` — clipped without a scroll container.

::right::

**Before hiding overflow, ask:**

- Is a fixed height actually needed?
- Can the box grow with its content?
- Will people still be able to read everything?
- Can users enlarge text or zoom?

::below::

- `overflow: hidden` can mask layout mistakes. **Fix the sizing first.**

<!--
- The same property supports both axes: overflow-x and overflow-y.
- Overflow scrolling requires a dimension/constraint that gives content somewhere to overflow.
- Text clipped from a control or card may become inaccessible; test zoom and keyboard behavior.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/overflow
-->
