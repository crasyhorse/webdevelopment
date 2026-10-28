---
layout: pageBar
class: content-offset
---

# Understanding Specificity

| Selector | Specificity | Why? |
|---|---|---|
| `button` | **0-0-1** | One type selector |
| `.task-card` | **0-1-0** | One class selector |
| `.task-card button` | **0-1-1** | One class + one type |
| `.task-card:hover` | **0-2-0** | Class + pseudo-class |
| `#task-form` | **1-0-0** | One ID selector |

**Compare columns from left to right — not as decimal numbers.**

<!--
- Specificity is a three-column selector weight: IDs, classes/attributes/pseudo-classes, types/pseudo-elements.
- Compare columns lexicographically; never treat 0-1-10 like a decimal number.
- The preceding slide introduced the three specificity columns; use these examples to reinforce them.
- Inline styles have a special position in the cascade and are not represented by the normal selector tuple.
- :where() always adds zero specificity; :is() and :not() take the specificity of the most specific argument, which is advanced content.
- Prefer low, predictable class specificity rather than overusing IDs.
-->
