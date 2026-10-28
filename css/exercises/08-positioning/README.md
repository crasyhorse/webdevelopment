# Exercise 08 — Positioning

## Learning objectives

- Add a priority badge in `index.html`
- Investigate the containing block
- Make the header sticky
- Verify stacking and accessibility

## Starting point

Open `index.html` in your browser and `styles.css` in your editor. These files and the attachment SVG are identical to the previous reference solution. Keep all previous work.

## Tasks

1. **Add a priority badge in `index.html`.**

   Locate the featured task (`.task-list__item--featured`). Insert this as its first child, before the icon:

   ```html
   <span class="task-list__badge">High priority</span>
   ```

   Reload. Notice that the badge initially occupies space in normal flow.

2. **Investigate the containing block.**

   In `styles.css`, append the following rule. Reload before adding `position: relative` to the task. Notice where the badge appears. Then add the featured-task rule and compare. Temporarily set the badge to `position: relative` and explain why the following content moves. Restore absolute positioning.

   ```css
   .task-list__item--featured { position: relative; padding-top: 3rem; }
   .task-list__badge { position: absolute; top: .5rem; right: .75rem; background: #fff1dc; color: #854b09; padding: .2rem .5rem; border: 1px solid #a65a0b; border-radius: .3rem; }

   ```

3. **Make the header sticky.**

   Append the header rule below. Scroll the page, not just the internal task list. Shrink browser height if needed. Change `sticky` to `fixed` temporarily; inspect the space that disappears, then restore `sticky`.

   ```css
   .task-manager__header { position: sticky; top: 0; z-index: 2; background: #e7f1fd; }
   ```

4. **Verify stacking and accessibility.**

   Temporarily set the badge `z-index` to `3`; scroll and inspect the overlap, then remove that declaration. Confirm the header background is opaque and the badge does not cover the description. Tab through controls and check visible focus; if the header consumes too much space at a short viewport, use normal flow for that situation.

## Reference solution

See `../../solutions/08-positioning/`. Compare the final HTML and CSS; do not replace your work until you have tried the experiments.
