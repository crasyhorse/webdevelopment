---
layout: pageBar
class: content-offset
---

# BEM as Architecture

```css
/* task-list.css — flat selectors, one block per file */
.task-list { … }
.task-list__item { … }
.task-list__item--featured { … }
```

- Part III taught BEM for naming; it is also a **layout plan** for the CSS.
- Flat, single-class selectors keep specificity low — nothing escalates.
- A new block means a new file; a new state means a modifier, not a new rule chain.

<!--
- The architecture payoff of rules they already follow: any developer can grep one class and find every rule for it.
- Decision guide for "new block or new element?": reusable on its own with its own styles → block; only meaningful inside its block → element.
- Low specificity is the feature: overrides stay possible without `!important` or selector pile-ups — the setup for the layers slide.
- Anti-pattern to show from their own history: `.task-manager .task-list .task-list__item` — the descendant chain re-couples what BEM decoupled.
- Connect to Part VIII: tokens.css holds the `:root` token set; components consume it — file structure and token structure align.
-->
