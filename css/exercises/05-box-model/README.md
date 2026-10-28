# Exercise 05 — Size & Space the Task Manager

**Starting point:** The completed Exercise 04 Task Manager, keeping the same semantic HTML and BEM classes. The starter CSS retains basic colors and accessible focus styles but deliberately omits most box-model decisions.

## Tasks

1. Add a global `box-sizing: border-box` rule (include pseudo-elements).
2. Give `.task-manager` a fluid width and sensible `max-width`; center it without requiring a fixed pixel width.
3. Style `.task-list__item` with consistent padding, margin, and border. Keep high-priority and completed variants clearly distinguishable.
4. Give `.task-form` a maximum width and inputs/selects a usable full width. Add padding, border, and a comfortable minimum height.
5. Give the submit button an inner padding and border. Preserve its accessible `:focus-visible` indicator.
6. Use relative lengths (`rem` or `em`) for most spacing; avoid fixed heights on task cards or form content.
7. Verify in DevTools that a long task name, a narrow viewport, and 200% browser zoom do not cut off important content.

## Explore

- What changes if you remove `box-sizing: border-box`?
- How do `min-height` and fixed `height` differ when content grows?
- Why does a percentage width sometimes appear to overflow with padding and borders?
- Why would `overflow: hidden` be a poor workaround for missing form content?

**Stretch goal:** Add a small icon next to a description and use `float` for text wrapping; use `display: flow-root` if you need to contain the float.

**Reference solution:** `../../solutions/05-box-model/`.
