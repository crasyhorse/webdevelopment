---
layout: pageBarTwoCols
class: content-offset
---

# Physical vs Logical Spacing

::left::

**Physical spacing**

```css
.task-card {
  padding-left: 1rem;
}
```

<div>
  <img
    src="/images/physical-padding.svg"
    alt="In both left-to-right and right-to-left text, padding-left remains on the left side of the task card."
    class="block mx-auto w-full"
    style="max-height: 28vh; object-fit: contain;"
  />
</div>

::right::

**Logical spacing**

```css
.task-card {
  padding-inline-start: 1rem;
}
```

<div>
  <img
    src="/images/logical-padding.svg"
    alt="In left-to-right text, padding-inline-start is on the left; in right-to-left text, it moves to the right."
    class="block mx-auto w-full"
    style="max-height: 28vh; object-fit: contain;"
  />
</div>

::below::

- Physical padding uses a fixed side.
- Logical padding minds the reading direction.

<!--
- Compare the two diagrams row by row: in left-to-right writing, both rules add padding on the left.
- Now read the right-to-left row. With `padding-left`, the gap stays on the left although the text begins on the right.
- With `padding-inline-start`, the gap moves to the right, where right-to-left text starts.
- This is why logical padding often better expresses design intent for multilingual interfaces.
- `inline-start` and `block-start` refer to the inline and block axes, not always left or top. For horizontal English text, `block-start` is top; vertical writing modes are different.
- The diagrams intentionally show only `inline-start`; comparing one property at a time makes the difference easier to see.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_logical_properties_and_values
-->
