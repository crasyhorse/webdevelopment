# Quiz 01 — Answers

## 1. Three ways to add CSS

- **External** stylesheet: `<link rel="stylesheet" href="styles.css">` in the HTML head; rules reside in a separate file.
- **Internal** stylesheet: `<style>h1 { color: blue; }</style>` typically in the HTML head.
- **Inline** CSS: `<h1 style="color: red">Task Manager</h1>`.

## 2. Preferred for the Task Manager

An external stylesheet usually makes the CSS reusable across HTML pages and easier to organize and maintain. Inline and internal styles are valid, but not the default for a larger app.

## 3. Which color wins?

Under ordinary author styling, an inline `style` declaration has precedence over normal stylesheet declarations. If the external and internal styles use the same selector and otherwise compete equally, source order can decide their result. The full cascade includes origin, importance (`!important`), cascade layers, specificity and other rules, so an inline declaration does not unconditionally win every conflict. Those details belong in Part II.
