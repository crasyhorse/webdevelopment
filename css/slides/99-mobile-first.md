---
layout: pageBar
class: content-offset
---

# Mobile-First Design

<div>
  <img src="/images/media-query-base.svg" alt="The narrow layout stacks navigation and tasks; the wider layout places them side by side."
       class="block mx-auto w-full"
       style="max-height: 30vh; object-fit: contain;" />
</div>

- Start with a usable layout for narrow viewports.
- Prioritize essential content and interactions when space is limited.
- The constrained starting point encourages simpler, more focused designs.
- Use `min-width` queries to enhance the layout as space becomes available.
- Keep shared styles in the base rules instead of undoing a wide layout.

<!--
- Mobile-first refers to the design and CSS strategy, not detecting a phone or assuming that every phone has the same viewport width.
- Compare the narrow base with the enhanced layout. Refer back to the `min-width: 768px` example: at 600px only the base applies; at 900px the additional columns apply. The condition includes exactly 768px.
- Discuss why designing essential content under space constraints helps prioritize it.
  - Limited space forces designers to prioritize essential content and interactions, establish a clear visual hierarchy and identify unnecessary elements.
- Mobile-first is our preferred starting point, not a rule that makes every stylesheet automatically smaller or faster.
  - Enhancing a simple layout is generally easier than simplifying a complex one.
  - Common styles remain in the base rules, reducing unnecessary overrides.
  - Usability problems and horizontal overflow are discovered early.
  - CSS can become easier to understand and maintain.
- Wider layouts may enhance the presentation, but essential functionality must remain accessible at every viewport size.
-->
