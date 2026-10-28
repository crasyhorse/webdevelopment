# Exercise 13 — Responsive Components

## Starting point

Start from the exact Exercise 12 solution. The dashboard is responsive to viewport width, but its individual panels can differ significantly in width. You will reuse the same summary component in the tasks panel and the statistics panel and let its layout respond to each ancestor independently.

## Learning objectives and preparation

Compare viewport conditions with named size queries, inspect the ancestor that provides the query context, and resize a single component's panel without changing the viewport. Open the Task Manager in your browser and editor, and use DevTools' Elements/Computed panes. Start at a viewport of 1280px at 100% zoom. For numeric predictions assume a 16px root font size. The tasks panel has no padding or border of its own in the supplied stylesheet; the statistics panel has padding, so its content-box width differs from its outer width. The exercise uses the existing Task Manager rather than a second standalone demo.

## Tasks

1. **Introduce a reusable block.** Insert this identical markup immediately after the Tasks heading and immediately after the Statistics heading. Do not replace the task list or statistics text; the repeated sample summary demonstrates component reuse.

   ```html
   <article class="task-summary">
     <h3 class="task-summary__title">Task summary</h3>
     <p class="task-summary__count">8 sample tasks</p>
   </article>
   ```

2. **Define the base component.** Give `.task-summary` a border, modest padding and a light background consistent with existing cards. Make it a column-oriented Flexbox container with a gap. Remove default margins from its title and count elements. Allow long strings to wrap.
3. **Compare viewport responsiveness.** With both summaries initially stacked, temporarily append:

   ```css
   @media (min-width: 25rem) {
     .task-summary { flex-direction: row; }
   }
   ```

   At a 1280px viewport both summaries receive the same rule despite living in different-width tracks. In DevTools, inspect the tasks panel (`#tasks`) and temporarily add `width: 14rem;` to its rule. Keep the viewport fixed. Inspect the direction of both summaries: they remain rows even though the tasks panel has become narrow. Remove the width override and the temporary media query completely before continuing. Ask what a viewport query measures and why it cannot distinguish these two instances.
4. **Establish local query containers.** Add:

   ```css
   #tasks, .task-manager__stats {
     container-type: inline-size;
     container-name: task-summary;
   }
   ```

   The existing Grid tracks supply their inline sizes. Inspect the two panels in DevTools and compare their content widths. `inline-size` containment changes intrinsic inline-size calculations, so the surrounding layout must provide a usable width. `task-summary` is a container name, not a class selector. The summaries are descendants; do not establish the context on the summary itself and expect it to query its own size.
5. **Adapt each component independently.** Add a named `@container task-summary (min-width: 25rem)` rule targeting `.task-summary`. Inside it use row direction, center cross-axis alignment and space-between main-axis distribution. At 1200px inspect the wide tasks panel versus the narrow statistics panel. The tasks summary should be horizontal, the statistics summary vertical. At an intermediate layout the statistics panel spans both tracks and can become horizontal. Confirm the threshold against the content-box width in DevTools.
6. **Resize one query container independently.** At a 1280px viewport, leave the viewport untouched and temporarily edit the tasks panel's width in DevTools. Use `width: 14rem;`, then `width: 24rem;`, `width: 25rem;` and `width: 30rem;`. If you need a wider starting viewport or more room in the grid track to fit 30rem, increase the viewport before the experiment and then hold it fixed. Check the actual content-box width and the summary's computed `flex-direction` at each step. It stays a column below 25rem and changes to a row at 25rem and above; the statistics summary is unaffected. The width changes are temporary and can be made through DevTools rather than a resize handle. Remove the override. Compare the result with step 3, where changing a panel's width did not affect the matching media condition.
7. **Experiment with named and unnamed contexts.** Append a temporary override after both query-container declarations:

   ```css
   #tasks { container-name: other; }
   ```

   The tasks summary falls back to a column because it no longer has an ancestor matching the `task-summary` name. The statistics panel retains its name; its own width still determines its layout. Temporarily remove the name from the query header (`@container (min-width: 25rem)`) to query the nearest eligible size container regardless of its name. The tasks summary can again become a row if its container is wide enough. Restore the named header and remove the override. Discuss why a name is useful when nested ancestors are also eligible size containers. Temporarily disable the entire `@container` rule in DevTools to confirm the column base layout is a usable fallback. Re-enable it.
8. **Verify and explain.** Resize the viewport continuously, try long translations and 200% zoom, and check keyboard order and overflow. Compare computed direction with the content-box width in each layout. In particular, confirm that the statistics panel can become horizontal in the intermediate arrangement where it spans both tracks. Explain why a matching query styles the descendant rather than its own query container. Restore all temporary changes. Preserve the existing form, attachment, media queries and DOM order.

## Reference solution

See `../../solutions/13-container-queries/`. This is the starting point for the next workshop exercise. Restore temporary experiments before continuing.
