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

- `width: 100%` fills its containing block.
- `max-width` **caps** the width on wide screens.
- `min-height` sets a **minimum**, but content can increase height.

::right::

<div>
  <img src="/images/size-constraints.svg" class="block mx-auto w-full" style="max-height: 42vh; object-fit: contain;" alt="A card fills its narrow container, stops growing at 42rem on a wide screen, and may grow taller than its 10rem minimum." />
</div>

::below::

- **Minimum:** never smaller than the limit. **Maximum:** never larger than the limit (subject to other CSS constraints).

<!--
- Demonstrate a narrower browser and a wider browser using DevTools.
- Width 100% is relative to the containing block's content box; border-box prevents padding and borders from adding to the declared width.
- max-width: 42rem stops growth when the container gets wider.
- min-height: 10rem is a floor, not a fixed height. Text can make the card taller.
- Compare max-height: 20rem and overflow: auto on a long task list as a follow-up.
- Conflicting min/max constraints can change the result; keep this introduction conceptual.
-->
