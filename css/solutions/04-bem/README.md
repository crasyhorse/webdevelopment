# Exercise 04 — Instructor guidance

- The reference solution demonstrates three blocks: `task-manager`, `task-list`, and `task-form`.
- `task-manager__title`, `task-list__item`, and `task-form__submit` are elements belonging to those blocks.
- Modifiers `task-list__item--high-priority` and `task-list__item--completed` are **additional classes** on existing list items; the base class remains.
- The `task-form` block is independent even though its `<form>` appears inside a Task Manager. BEM boundaries do not have to match HTML nesting depth.
- The semantic `<form>`, `<label>`, `<input required>`, and `<button>` remain intact. Their actual semantics are not replaced by class names.
- All BEM rules in the reference solution use simple class selectors; native `input[required]` is retained for instructional comparison.
- Class naming is a design choice: alternate consistent component boundaries and meaningful class names are valid.
- The completed modifier is accompanied by text (“completed”) in the HTML, so the status is not communicated only by green coloring or a decorative generated mark.
- Check DevTools, keyboard Tab focus, and browser validation before marking the exercise done.
