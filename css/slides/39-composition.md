---
layout: pageBar
class: content-offset
---

# Composition

<img
  src="/images/composition-diagram.svg"
  alt="A diagram showing composition with reusable interface parts. A task card on the left contains a status badge and action buttons. On the right, the same kinds of badge and button parts are reused in a toolbar and in other panels."
  class="w-full mx-auto block" style="max-height: 55vh; object-fit: contain;" />

<!--
- Composition means building larger interfaces by combining small, reusable parts.
- The same parts can appear in different contexts.
- Composition works because each part keeps its own low-specificity class-based selectors.
- Low specificity keeps styles easy to override and change.
- Parts can be rearranged without fragile, structure-dependent selectors.
- Why is composition useful?
  1. Reuse: one part can appear in many places.
  2. Predictable overrides: simple selectors are easier to change.
  3. Flexibility: layouts can change without breaking CSS.
  4. Maintenance: CSS becomes easier to understand and extend.
  5. Collaboration: different developers can work on parts independently.
-->
