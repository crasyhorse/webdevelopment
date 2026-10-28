---
layout: pageBarTwoCols
class: content-offset
---

# `rem` vs `em`

::left::

**`rem`** uses the root element's font size.

**`em`** depends on the property:
- `font-size: 1.5em` uses the **parent's** font size.
- `padding: 1em` uses the **element's own** font size.

```css
html { font-size: 16px; }
.parent { font-size: 20px; }
.child {
  font-size: 1.5em; /* 30px */
  padding: 1rem;     /* 16px */
}
```

::right::

<div>
  <img src="/images/units-rem-em.svg" class="block mx-auto w-full" style="max-height: 49vh; object-fit: contain;" alt="Root 16px, parent 20px, child 1.5em becomes 30px, while 1rem padding stays 16px." />
</div>

::below::

- `rem` is **root-relative**; `em` is **font-size-relative**, with a property-dependent reference.

<!--
- For font-size specifically, an em is measured against the inherited parent font-size.
- For padding, an em is measured against the element's own computed font-size.
- With root 16px: 1rem = 16px. Parent 20px and child font-size 1.5em → 30px.
- If child padding changed to 1em, it would be 30px instead of 16px.
- Do not assume the root always equals 16px; users may customize it.
-->
