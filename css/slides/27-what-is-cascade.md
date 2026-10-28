---
layout: pageBar
class: content-offset
---

# What Is the CSS Cascade?

- The **cascade** determines which declaration takes precedence when multiple CSS declarations compete for the **same property on one element**.
- First, only **matching and relevant declarations** are considered.
- **Origin and `!important`** are evaluated before selector specificity.
- **Specificity** then compares competing selectors at the same cascade priority.
- **Source order** breaks remaining ties.

```css
.task-card { color: navy; }
.task-card { color: teal; } /* Same priority: later wins */
```

<!--
- The cascade is not simply a list of specificity values; first distinguish whether rules match and are relevant.
- The simple example assumes ordinary author declarations in the same cascade layer and no active transition.
- The following flowchart makes the precedence stages visible.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Cascade/Introduction
-->
