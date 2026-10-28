# Exercise 02 — Reference solution

This folder contains the completed **same Task Manager** at the end of Exercise 02.

- `index.html`: complete semantic Task Manager markup for this stage.
- `styles.css`: complete styling through this stage.
- Keep all work from the preceding exercises when continuing.

The `index.html` and `styles.css` files are **byte-identical** to the starting files of `../../exercises/03-cascade-specificity/`.

## Results of the pseudo-selector experiments

- `:hover` matches while the pointer hovers; `:focus-visible` matches focused controls when visible focus is appropriate. Both rules remain in the solution.
- `:first-child` and `:last-child` follow sibling position, not the task's identity. The temporary selectors are removed.
- `::first-letter` styles a fragment of the introductory paragraph; `:first-child` instead tests the whole element's sibling position. Neither experimental rule remains.
- `::before` generates the decorative marker before task text; `::after` would place it after. Disabling `content` removes the generated box. The final stylesheet retains only `::before`. No task status or other essential information depends on the marker.
- The original HTML is restored, so the Exercise 03 handoff remains unchanged.
