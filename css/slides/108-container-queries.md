---
layout: pageBarTwoCols
class: content-offset
---

# Defining Query Containers

::left::

```css
.task-panel {
  container-type: inline-size;
  container-name: tasks;
}
.task-card {
  display: flex;
  flex-direction: column;
  gap: .5rem;
}
@container tasks (min-width: 25rem) {
  .task-card { flex-direction: row; }
}
```

::right::

<div>
  <img src="/images/container-query-threshold.svg" alt="Two panels named tasks: at 20rem the card lays out its two children in a column; at 30rem the named size query matches and the card lays out its children in a row."
       class="block mx-auto w-full"
       style="max-height: 34vh; object-fit: contain;" />
</div>

::below::

- Establish a query container on an ancestor.
- `@container` tests the size of a matching named ancestor.
- The card is a descendant; it cannot query its own size this way.

<!--
- Trace the hierarchy: an outer `.task-panel` contains a `.task-card`, which contains the two items A and B. The dashed outlines indicate the panels, not the browser viewport.
- `container-type: inline-size` establishes size-query eligibility along the inline axis. In this horizontal writing mode, the width condition tests the panel's content-box width. Its surrounding layout must supply an inline size; containment affects intrinsic sizing.
- `container-name: tasks` gives the query a name. This is not a CSS selector or a class; multiple panels may use the same name. A named query selects the nearest eligible ancestor with that name for each matched card.
- At 20rem the condition does not match, so the base `flex-direction: column` remains. At 30rem the matching query overrides the direction with `row`. At exactly 25rem the inclusive minimum also matches.
- The diagrams are schematic: they emphasize the direction of the two child items, not their precise intrinsic sizes. `flex-direction` changes the main axis but does not itself set their widths, heights or gaps.
- Ask why changing the viewport is unnecessary to switch one component: change only the width of its ancestor. Exercise 13 lets attendees inspect the computed direction and container size and then test named and unnamed query contexts.
-->
