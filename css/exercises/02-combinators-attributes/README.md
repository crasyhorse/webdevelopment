# Exercise 02 — Combinators, Attribute Selectors & Pseudo-selectors

**Starting point:** the reference solution of Exercise 01. Use the same Task Manager HTML and descriptive class names.

## Tasks

1. Use `.task-list > .task-item` to style direct list children. Compare with the descendant combinator (space). Which difference would nesting make?
2. Use an adjacent sibling selector to style the description directly after the Task Manager title. Which element is selected?
3. Style the required task-name field with `input[required]`. Add an attribute selector for the due-date input, such as `input[type="date"]`.
4. Give the Add Task button visible `:hover` and `:focus-visible` states. Test both with mouse and keyboard.
5. Use `::before` or `::after` for a **decorative** mark on tasks. Do not place essential meaning exclusively in CSS-generated content.
6. Inspect at least two rules in DevTools; identify the matching HTML elements.

## Explore

- What changes if the direct-child `>` becomes a descendant space?
- Can a sibling combinator select an earlier sibling?
- What happens if a required attribute is removed from HTML? Do not remove it permanently: native form validation matters.
- Why is `:focus-visible` preferable to eliminating focus outlines?

**Reference solution:** `../../solutions/02-combinators-attributes/`. Other valid selectors and colors are fine.
