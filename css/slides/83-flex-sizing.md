---
layout: pageBarTwoCols
class: content-offset
---

# Flexible Sizing — Grow, Shrink & Basis

::left::

<div>
  <img src="/images/flex-grow.svg" alt="Two 100px flex bases grow equally to 150px in a 300px container." class="block mx-auto w-full" style="max-height: 34vh; object-fit: contain;" />
</div>

::right::

<div>
  <img src="/images/flex-shrink.svg" alt="Two 100px flex bases shrink equally to 70px in a 140px container." class="block mx-auto w-full" style="max-height: 34vh; object-fit: contain;" />
</div>

::below::

- `flex-basis`: starting size along the main axis (here: 100px per item).
- `flex-grow`: distributes available extra space (here: +50px per item).
- `flex-shrink`: distributes the space deficit (here: −30px per item).

<!--
- Answer 5: ask the group to show its measured sizes first.
- Both examples use two items with `flex: 1 1 100px`, `min-width: 0`, no gap, padding or borders affecting the sizes.
- On the left, the 300px container has 100px remaining after the bases are allocated. Equal `flex-grow` factors distribute 50px to each item.
- On the right, the 140px container has a 60px deficit. Equal bases and equal `flex-shrink` factors remove 30px from each item.
- Shrinking is weighted by the flex base size as well as `flex-shrink`; equal factors alone do not guarantee equal pixel reductions.
- `flex` is shorthand for `flex-grow`, `flex-shrink`, and `flex-basis` in that order.
- Automatic minimum sizes can prevent shrinking. `min-width: 0` permits a horizontal flex item to shrink below its content-based automatic minimum.
-->
