# Exercise 04 — Refactor the Task Manager with BEM

**Starting point:** The completed Exercise 03 Task Manager. The provided `index.html` and `styles.css` are a copy of that solution. This exercise focuses on **naming**, not new CSS properties or page layouts.

## Tasks

1. Identify **three independent blocks**: the Task Manager shell, the task list, and the task form. Explain why the task form can be its own block even when it is inside the Task Manager.
2. Give each block a clear root class (`task-manager`, `task-list`, `task-form`). Refactor the relevant existing classes into BEM element names, e.g. `.task-title` → `.task-manager__title` and `.task-item` → `.task-list__item`.
3. Add a **high-priority modifier** to the first task list item, e.g. `task-list__item--high-priority`. Keep the **base element class** on the same item.
4. Add a **completed modifier** to the second task list item. Give the two variants visibly different styles while keeping text readable. Do not remove semantic HTML or convey an essential state only by color.
5. Update `styles.css` to target the new BEM classes. Prefer one class per selector. You may retain meaningful attribute selectors like `input[required]`, and pseudo-classes like `:hover`/`:focus-visible`.
6. Inspect the Task Manager in DevTools. Verify that the text, form labels, required input validation, focus indicator and styled list remain correct.

## Explore

- Why is `.task-list__item--high-priority` preferable to `.task-list__item--orange`?
- Why should an element inside an element **not** be named `.task-form__field__label`?
- How does keeping selectors such as `.task-list__item` rather than `.task-list .task-list__item` affect specificity?
- Is `:focus-visible` a BEM modifier? Why not?

**Reference solution:** `../../solutions/04-bem/`.

**Accessibility reminder:** BEM changes CSS naming, not native HTML semantics. For real application state, ensure the state is communicated through content or appropriate semantics, not color alone.
