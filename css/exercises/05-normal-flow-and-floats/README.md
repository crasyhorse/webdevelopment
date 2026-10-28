# Exercise 05 — Floats and clearing in our Task Manager

## Learning objectives

- Extend the **same BEM Task Manager** completed in Exercise 04.
- Float a decorative icon beside a task description, add a useful gap, and clear a following button.
- Compare left and right floats; distinguish `clear` from `display: flow-root`.
- Preserve the existing task list, form, modifiers, and keyboard focus.

## Starting point

Open `index.html` and `styles.css`. They are **byte-identical to `solutions/04-bem/`**: you already have the full Task Manager, including a header, two task items and a task form. Do **not** replace this with a new mini page. Edit the first task list item and append new CSS only.

## Tasks

1. In `index.html`, find `<li class="task-list__item task-list__item--high-priority">`. Keep both existing classes and add `task-list__item--featured` to this **same** `<li>`. Do not change the second completed task item.
2. Inside the first `<li>`, add `<span class="task-list__icon" aria-hidden="true">★</span>` **before** the task description. The star is decorative; the original priority description must remain readable as text.
3. Wrap the task description in `<p class="task-list__description">...</p>`. Keep the task's original meaning; add a second sentence to make wrapping visible.
4. After the paragraph, add `<button class="task-list__action" type="button">Mark as done</button>`. This is a demonstration control; no JavaScript behavior is required.
5. In `styles.css`, add `.task-list__icon` with `float: left`, a visible `width` and `height` (e.g. `3.5rem`), background, centered star, and `margin-right: 12px`. Verify that the description wraps next to the icon.
6. Set `.task-list__description { margin-top: 0; }` to prevent the default top paragraph margin from creating an unwanted gap. Inspect the paragraph and icon boxes in DevTools.
7. Style `.task-list__action` as a readable button. Give it `display: block; clear: both;` and test that it starts **below** the floated icon. Temporarily disable `clear` and compare; restore it afterward.
8. Change the icon to `float: right`. Move the gap to `margin-left: 12px` and remove `margin-right`; confirm the text wraps from the other side while `clear: both` still works. Restore the left float and right margin before finishing.
9. Add `.task-list__item--featured { display: flow-root; }`. Use DevTools to see that the item encloses its float. Contrast this with `clear: both`, which controls the following element's position.
10. Preserve the original BEM form and its button; add `:focus-visible` to the new task action button. Tab through **both** buttons and verify visible focus.

## Check your result

- The full Exercise 04 Task Manager is still present, including its two list items and form.
- A star icon floats inside the first task item; long text wraps around it with a 12px gap.
- The new action button appears underneath the float; the second task stays unchanged.
- Switching the float direction works, and keyboard focus stays visible.

## Questions to discuss

1. Why is `clear: both` unaffected by changing the icon's float direction?
2. Why is `display: flow-root` a separate concept from `clear`?
3. When would you choose Flexbox instead of a float for a task card?

**Reference solution:** `../../solutions/05-normal-flow-and-floats/`.
