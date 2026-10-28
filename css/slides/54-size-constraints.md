---
layout: pageBarTwoCols
class: content-offset
---

# Minimum & Maximum Sizes

::left::

```css
.task-card {
  width: 100%;
  max-width: 42rem;
  min-height: 10rem;
}
```

- `width: 100%` follows available containing width.
- `max-width` prevents excessively wide cards.
- `min-height` guarantees room but allows growth.

::right::

```css
.task-list {
  max-height: 20rem;
  overflow: auto;
}
```

**Constraints shape the available space.**

- `min-width`, `max-width`
- `min-height`, `max-height`
- `auto` versus explicit sizes

::below::

- Test with long text and narrow viewports. Avoid assuming one screen size.

<!--
- `min-*` and `max-*` can override a preferred width/height when constraints conflict.
- Percentage heights may not resolve as expected without a definite containing block height.
- Some replaced elements have intrinsic width/height or an aspect ratio, which affects sizing.
-->
