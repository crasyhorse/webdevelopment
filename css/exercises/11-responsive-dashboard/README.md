# Exercise 11 — Responsive Dashboard

## Starting point and learning objectives

The starter is identical to the reference solution of Exercise 10. Open `index.html` and `styles.css`. You will convert its unconditional three-column dashboard into a mobile-first layout, choose breakpoints according to the content and adapt the sticky header to available height. Preserve the HTML order, task list, attachment and native form behavior. You will also perform the width, height, combined-condition and cascade experiments previously covered in the separate media query demo. Use the DevTools Styles and Computed panes to predict and verify the effects of temporary changes; keep a copy of your stylesheet before each experiment.

## Tasks

1. **Investigate the problem.** Enable the device toolbar and Grid overlay. At 1200px inspect the three tracks, then try 360px and a short viewport. Record which sections become crowded and whether the sticky header leaves enough room to scroll.
   Inspect the computed `grid-template-columns`, and resize continuously rather than selecting only device presets. The tracks shrink, but their three-column arrangement stays the same. Inspect whether the header leaves enough visible space when scrolling.
2. **Make the base layout narrow.** Find the Exercise 10 grid rule. Replace its track definition with `minmax(0, 1fr)` and its area template with `"nav" "tasks" "stats"`. Use the full available application width at small sizes, reduce padding to `1rem`, and set the header/hero width to `100%` and its minimum height to `0`. Set the header's default position to `static`. Check that the list, attachment and form remain visible. At 1200px, observe why the single-column arrangement wastes available horizontal space. Predict when the sidebar and tasks could comfortably sit next to each other. Use `overflow-wrap: anywhere` on the main area and constrain the action buttons and badge to their available width; do not hide horizontal overflow.
3. **Add an intermediate arrangement.** Resize until two columns fit comfortably. Start with `@media (min-width: 48rem)` and adapt the threshold if your content demands it. Restore a centered application width of `94%` with vertical margins. Use two tracks in a 1:3 ratio and a two-row area template:

   ```css
   grid-template-areas: "nav tasks" "stats stats";
   ```

   Verify that statistics span both columns on the second row. The sidebar, tasks and statistics remain in their original DOM order.
4. **Add the wide arrangement.** At a larger threshold, initially `64rem`, restore the three tracks and named areas from Exercise 10. Put the wider query after the intermediate query. Swap the queries temporarily and observe what wins at 1200px; restore the intended order. At 767, 768, 1023 and 1024 CSS pixels, identify the matching queries and the computed track sizes using DevTools (assuming a 16px browser initial font size). At 1024px both width queries match, but later declarations win at equal specificity.
5. **Adapt sticky positioning.** Use `and` to require both a sufficiently wide and tall viewport. Begin with `(min-width: 48rem) and (min-height: 32rem)`; inside the query restore `position: sticky` and `top: 0`. Scroll in a short landscape viewport and a tall one. Explain why the header's default position remains static.
6. **Experiment with maximum conditions and combinations.** These experiments are temporary. Keep the first (gap) rule until task 7, and remove the other two rules immediately after their experiments.

   Append this rule after your permanent rules:

   ```css
   @media (min-width: 48rem) and (min-height: 32rem) {
     .task-manager__main { gap: 2rem; }
   }
   ```

   Predict and inspect the computed gap at 900 × 600px, 900 × 400px and 600 × 600px. Only the first viewport satisfies both conditions; the other two use the base gap of `1rem`. At exactly 512px height, the minimum height condition also matches (assuming a 16px initial font size).

   Next, append a maximum-height rule after the combined condition that restores the sticky header:

   ```css
   @media (max-height: 32rem) {
     .task-manager__header { position: static; }
   }
   ```

   Test a wide viewport at 511px, 512px and 513px height. At 512px both height conditions match, and the later `position: static` wins; at 513px only the minimum condition matches and the header is sticky. Scroll and inspect the `position` property in DevTools. Remove this temporary maximum-height rule.

   Try comma-separated alternatives as a separate experiment:

   ```css
   @media (max-width: 30rem), (max-height: 24rem) {
     .task-manager__main { gap: .5rem; }
   }
   ```

   At 400 × 700px only the width query matches; at 900 × 350px only the height query matches; at 900 × 600px neither matches. Expect `0.5rem`, `0.5rem` and `2rem` respectively (the first temporary gap rule still applies at the third size). Compare the computed gap, then remove this temporary rule.

7. **Investigate the cascade.** With the temporary `gap: 2rem` query from task 6 still present, append:

   ```css
   .task-manager__main { gap: 1.5rem; }
   ```

   At 900 × 600px, which gap wins? The unconditional declaration wins because it occurs later at the same specificity and cascade priority. Move it immediately before the temporary media query: now the matching `2rem` wins. At 900 × 400px the query does not match, so `1.5rem` wins. Inspect the crossed-out rules in the Styles pane and check the Computed pane. Delete both temporary gap declarations (the unconditional rule and the `2rem` query), returning to the permanent `1rem` gap.

8. **Verify.** Test 320px, 360px, 767px, 768px, 1023px, 1024px and 1280px (threshold equivalents assuming 16px initial font size), short viewports and 200% zoom. Verify long text, image sizing, labels and Tab order. Resize continuously between the tested widths and consider whether long translated headings need more room. Adjust content-driven breakpoints if necessary. Check that no horizontal page overflow is present. Keep Grid for the dashboard and Flexbox for the inner action group.

## Reference solution

See `../../solutions/11-responsive-dashboard/` for one implementation. The thresholds are illustrative; real content may justify alternatives. Restore temporary experiments before progressing.
