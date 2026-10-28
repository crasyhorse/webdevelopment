---
layout: pageBarTwoCols
class: content-offset
---

# Size Constraints — Minimum & Maximum

::left::

**A flexible card with limits**

```css
.task-card {
  box-sizing: border-box;
  width: 100%;
  max-width: 42rem;
  min-height: 10rem;
}
```

- `width: 100%` fills the available width of the parent.
- `max-width` stops the card from becoming too wide.
- `min-height` guarantees a minimum height.
- If the content needs more space, the card can still grow taller.

::right::

<div>
  <img src="/images/size-constraints.svg" class="block mx-auto w-full" style="max-height: 45vh; object-fit: contain;" alt="Three examples explain size constraints. A card fills a narrow parent, stops growing at max-width in a wide parent, and respects a minimum height while still growing taller when content is long." />
</div>

<!--
- `width: 100%` is relative to the containing block's content box; `border-box` prevents padding and borders from adding to the declared width.
- In the first example the card fills the narrow parent because `width` is `100%`.
- In the second example the parent is wider, but `max-width` stops the card from becoming too wide.
- In the third example `min-height` creates only a floor. It does not prevent the card from becoming taller when the content needs more space.
-->
