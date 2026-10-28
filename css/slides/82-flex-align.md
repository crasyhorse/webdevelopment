---
layout: pageBarTwoCols
class: content-offset
---

# Align Items Along the Cross Axis

::left::

```css
.actions {
  display: flex;
  align-items: center;
}
/* Item also has actions__item. */
.actions__item--end {
  align-self: flex-end;
}
```

::right::

<div>
  <img src="/images/flex-alignment.svg" alt="Three rows show stretch, center and center with one item aligned to flex-end." class="block mx-auto w-full" style="max-height: 38vh; object-fit: contain;" />
</div>

::below::

- `align-items` sets the default for all items.
- `align-self` overrides it for one item.

<!--
- Answer 4: the container has a fixed height and the items have auto cross sizes.
- `stretch` fills available cross-axis space for auto-sized items; `flex-start`, `center`, and `flex-end` position items along the cross axis.
- `baseline` aligns item baselines. Changing `flex-direction` changes the cross axis.
-->
