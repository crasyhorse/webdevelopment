---
layout: pageBarTwoCols
class: content-offset
---

# Stacking — Which Box Is in Front?

::left::

<div>
  <img src="/images/stacking-simple.svg" alt="Three overlapping boxes in one stacking context. The box with z-index 3 is in front, z-index 2 is in the middle, and z-index 1 is in the back." class="block mx-auto w-full" style="max-height: 25vh; object-fit: contain;" />
</div>

::right::

<div>
  <img src="/images/stacking-contexts-two-levels.svg" alt="A header with z-index 2 overlaps a task card with z-index 1. Inside the card, a popover with z-index 999 still remains below the header because it only wins inside the card's own stacking context." class="block mx-auto w-full" style="max-height: 25vh; object-fit: contain;" />
</div>

::below::

- Positioned elements may overlap.
- `z-index` decides which layer is in front **inside the same stacking context**.
- In one context, the highest `z-index` is on top and the lowest is in the back.
- A child cannot jump above its ancestor's context just by using a bigger number.

<Button type="demo" url="http://localhost:5500/css/demo/08-positioning/index.html" />

<!--
- Start with the left picture: all three boxes belong to one stacking context, so the highest `z-index` appears in front.
- Then move to the right picture: the header and task card are compared as siblings first.
- The header has `z-index: 2`; the task card has `z-index: 1`, so the whole card stays below the header.
- Inside the card, the popover with `z-index: 999` wins only inside that card.
- This is the key rule: `z-index` values are not global numbers.
- Also mention that a `sticky` element creates a stacking context.
-->
