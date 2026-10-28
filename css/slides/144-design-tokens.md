---
layout: pageBar
class: content-offset
---

# Design Tokens: Raw and Semantic

```css
:root {
  --color-blue-500: #4C7186;   /* raw */
  --color-blue-100: #E1ECF2;   /* raw */

  --button-bg: var(--color-blue-500);   /* semantic */
  --card-bg: var(--color-blue-100);     /* semantic */
}
```

- **Raw tokens** name the value family: `--color-blue-500`.
- **Semantic tokens** name the **role**: `--button-bg`, `--card-bg`.
- Components consume semantic tokens only — a rebrand changes the mapping, not the components.

<!--
- Reuse the Part VII SVG palette as the raw scale: the course already has a five-level family per color; naming it is a natural exercise.
- One indirection buys decoupling: --button-bg can point to a different raw color per theme while every button rule stays untouched.
- Discussion: how many indirection levels are too many? (Two is usually enough; chains of aliases become unreadable.)
- Prediction: the brand moves from blue to green. Which lines change with semantic tokens? Which files change without them?
-->
