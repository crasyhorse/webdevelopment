# Exercise 09 — Flexbox

## Learning objectives

- Extend the navigation
- Group the featured task content
- Replace the float layout
- Experiment with button alignment and wrapping

## Starting point

Open `index.html` in your browser and `styles.css` in your editor. These files and the attachment SVG are identical to the previous reference solution. Keep all previous work.

## Tasks

1. **Extend the navigation.**

   In `index.html`, add class `task-manager__nav` to the existing `nav`. Insert a second link `<a href="#task-name">New task</a>` after the Tasks link. In `styles.css`, add:

   ```css
   .task-manager__nav { display: flex; flex-wrap: wrap; gap: .75rem; align-items: center; }
   ```

   Temporarily switch `flex-direction` between `row` and `column`. Restore the default row.

2. **Group the featured task content.**

   Find the featured item. Wrap its existing description paragraph AND action group in a new `<div class="task-list__body">`. The badge and icon must remain direct children of the list item. Do not remove the buttons or their size modifiers.

3. **Replace the float layout.**

   Append these rules:

   ```css
   .task-list__item--featured { display: flex; align-items: flex-start; gap: .75rem; }
   .task-list__icon { float: none; margin-right: 0; flex: 0 0 3.5rem; }
   .task-list__body { flex: 1 1 12rem; min-width: 0; }
   ```

   Use DevTools to compare the original `float` rule with the override. Resize the window. Temporarily remove `min-width: 0` and test a long word, then restore it. The icon retains its basis; the body can shrink.

4. **Experiment with button alignment and wrapping.**

   Append the remaining rules:

   ```css
   .task-list__actions { clear: none; display: flex; flex-wrap: wrap; gap: .6rem; align-items: center; }
   .task-list__action { clear: none; }
   ```

   Try `justify-content: space-between` and `align-items: baseline`. Turn wrapping off and observe narrow widths. Restore the supplied rules. Check that the buttons retain their `em` padding from Exercise 06.

## Reference solution

See `../../solutions/09-flexbox/`. Compare the final HTML and CSS; do not replace your work until you have tried the experiments.
