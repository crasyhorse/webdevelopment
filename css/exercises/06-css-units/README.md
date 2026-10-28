# Exercise 06 — Responsive CSS units in the same Task Manager

## Learning objectives

- Compare a fixed `px` width with a percentage of the parent.
- Apply `vw` and `vh` to a viewport-aware header without clipping its text.
- Discover why button padding in `em` scales with the button's computed font size, unlike `rem`.
- Preserve the Exercise 05 floated icon and all BEM classes.

## Starting point

Open `index.html` and `styles.css`. They are **byte-identical to the Exercise 05 solution**. You should see the same Task Manager with its featured task, star icon and `Mark as done` button, plus its original form. Unlike a separate playground, every change in this exercise stays in that app.

## Tasks

1. Find `.task-manager` in `styles.css`. Temporarily add `width: 360px;` and resize the browser until the Task Manager is wider than the space available. Inspect its computed width.
2. Replace the experimental width with `width: 88%; max-width: 55rem;`. Resize again. Explain which declaration follows the parent and which caps the width. Keep the existing horizontal centering.
3. In `index.html`, add class `task-manager__hero` alongside the existing `task-manager__header` class on the `<header>`; keep its `<h1>`, paragraph, and navigation intact.
4. In CSS, set `.task-manager__hero { width: 75vw; min-height: 18vh; }`. Add `max-width: 100%`, padding, and a subtle background. Resize horizontally and vertically to observe which dimension responds. Explain why `min-height` is safer than a fixed height for translated or enlarged text.
5. Inside the featured task's `<li>`, replace its **single action button** with a `<div class="task-list__actions">` containing two buttons: `Small action` and `Large action`. Both keep the `task-list__action` base class and `type="button"`; additionally use modifiers `task-list__action--small` and `task-list__action--large`.
6. In CSS, give `.task-list__actions` `clear: both; display: flex; flex-wrap: wrap; gap: .6rem;`. The wrapper now clears the icon float; the two action buttons sit together underneath it. Set `.task-list__action { display: inline-block; clear: none; }`.
7. Set `.task-list__action--small { font-size: .875rem; }` and `.task-list__action--large { font-size: 1.5rem; }`. Start with `.task-list__action { padding: .5rem 1rem; }`; compare the padding and text proportions in DevTools.
8. Change only the padding to `.5em 1em`. Inspect computed padding on both buttons and explain **why `em` is better for padding that should scale with that button's own font size**. Keep the `em` version.
9. Point to one purposeful use of each unit: `px` (e.g. the icon gap or border), `%` (Task Manager width), `rem` (general spacing and font sizes), `em` (button padding), and `vw`/`vh` (header).
10. Verify the existing BEM task items, form inputs, and `:focus-visible` behavior still work. Resize to a narrow viewport and inspect whether text remains accessible.

## Check your result

- You still have the **complete previous Task Manager** and its floated star.
- The Task Manager width adapts to its parent, while the header uses the viewport.
- The large and small buttons have proportionate padding using `em`; the wrapper clears the float.
- The required form input and keyboard focus indicators remain functional.

## Questions to discuss

1. Why can `75vw` exceed the content area of a padded parent without `max-width: 100%`?
2. When should common page spacing use `rem` instead of `em`?
3. Why is viewport-relative sizing not automatically the same as responsive design?

**Reference solution:** `../../solutions/06-css-units/`.
