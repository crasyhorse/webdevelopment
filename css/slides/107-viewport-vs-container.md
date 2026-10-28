---
layout: pageBar
class: content-offset
---

# Viewport vs. Container Responsiveness

<div>
  <img src="/images/responsive-container-comparison.svg" alt="Two copies of the same card are stacked in a narrow container and horizontal in a wide container within one viewport."
       class="block mx-auto w-full"
       style="max-height: 39vh; object-fit: contain;" />
</div>

- Both components share the same viewport width.
- A container query can respond to each component’s available space.

<!--
- Point to the two copies of the same component. Both are in one browser viewport, but the surrounding layout gives them different amounts of space.
- Ask attendees what would happen if the card changed direction using `@media (min-width: 25rem)`. At one viewport width that condition has the same result for both copies, even if one panel is too narrow for a row.
- Recall that Flexbox and Grid can already adapt intrinsically. Container queries are useful when a component needs a distinct arrangement or styling change based on its own local space.
- The narrow card should remain a column while the wide card becomes a row. No device detection or separate component markup is needed.
- Emphasize the distinction between the viewport and the ancestor query container. In Exercise 13 the same summary block will live in both the tasks panel and the statistics panel.
-->
