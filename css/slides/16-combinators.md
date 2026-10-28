---
layout: pageBar
class: content-offset
---

# CSS Combinators

| Rule | Meaning |
|---|---|
| `.task-list .task-card { }` | `.task-card` is a **descendant** of `.task-list`. |
| `.task-list > .task-card { }` | `.task-card` is a **direct child** of `.task-list`. |
| `h2 + p { }` | `p` is the **next sibling** immediately after `h2`. |
| `h2 ~ p { }` | `p` is a **subsequent sibling** of `h2`. |

**Combinators express relationships in the HTML tree.**

<!--
- The descendant combinator is a space, and can match through multiple levels.
- Child (>) only matches immediate children.
- Adjacent/next sibling (+) selects the immediate following sibling; subsequent sibling (~) selects any later sibling matching p, sharing the parent.
- The direction matters: h2 ~ p matches p after h2, not p before it.
- Show the Task Manager markup from the semantic HTML course.
-->
