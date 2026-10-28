---
layout: pageBar
class: content-offset
---

# BEM — Practical Rules and Pitfalls

| Prefer | Avoid | Why? |
|---|---|---|
| `.task-form__label` | `.task-form__field__label` | Names describe the block, not nesting depth. |
| `.task-list__item` | `.task-list .task-list__item` | A single class keeps specificity predictable. |
| `.task-card--featured` | `.task-card--blue` | Name the purpose, not today's CSS color. |
| `class="task-card task-card--featured"` | `class="task-card--featured"` | A modifier adds to its base class. |

<!--
- An element nested in another element is still named relative to its block: block__child, not block__parent__child.
- Avoid type selectors tied to a component (e.g. div.task-card) and unnecessarily chained selectors: both raise specificity or increase coupling.
- A block modifier may legitimately affect its own elements: .task-card--featured .task-card__title { ... }. This is an exception for expressing a block-wide variant.
- Blocks may be nested and a single HTML element can participate in more than one block, but only introduce additional structure when it is meaningful.
- Keep real attributes (required, disabled, aria-*, id references) and real HTML elements for semantics. Styling classes are not behavior or accessibility substitutes.
- BEM improves organization; it does not eliminate the cascade or make CSS specificity irrelevant.
- Reference: https://getbem.com/faq/
-->
