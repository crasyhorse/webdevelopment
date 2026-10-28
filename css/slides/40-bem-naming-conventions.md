---
layout: pageBar
class: content-offset
---

# BEM Naming Conventions

| Part | Pattern | Example |
|---|---|---|
| **Block** | `.block` | `.task-card` |
| **Element** | `.block__element` | `.task-card__title` |
| **Block modifier** | `.block--modifier` | `.task-card--featured` |
| **Element modifier** | `.block__element--modifier` | `.task-card__title--muted` |

- Use **lowercase, hyphen-separated** words within names.
- `__` separates an **element**; `--` introduces a **modifier**.

<!--
- The double underscore and double hyphen are naming delimiters. 
- Use lowercase words separated by single hyphens within each segment.
- Keep the base class when adding a modifier: class="task-card task-card--featured" or class="button button--danger". 
- A modifier adds behavior or styling; it should not replace the base class.
- Blocks may be nested. A button inside a task-card can remain its own independent .button block instead of becoming .task-card__button when it should be reusable elsewhere.
-->
