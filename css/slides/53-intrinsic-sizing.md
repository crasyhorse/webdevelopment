---
layout: pageBarTwoCols
class: content-offset
---

# Let Content Determine Size

::left::

**Content-driven sizing**

```css
.task-card {
  width: auto;
  min-height: 8rem;
  padding: 1rem;
}
```

The card **grows in height** when more content is added.

::right::

**Fragile fixed sizing**

```css
.task-card {
  width: 360px;
  height: 120px;
}
```

Long text, localization, or larger fonts may no longer fit.

::below::

- Prefer natural height with constraints where needed; **fixed height can cause overflow**.

<!--
- Browser layout is intrinsically content-driven; many block boxes have an automatic height.
- Intrinsic sizing keywords include min-content, max-content, and fit-content. Mention these verbally if useful; their detailed use comes later.
- Demo: add another sentence or increase browser zoom and compare the two approaches.
-->
