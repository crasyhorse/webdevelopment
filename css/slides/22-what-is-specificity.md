---
layout: pageBar
class: content-offset
---

# What Is Specificity?

- **Specificity** is the weight assigned to a CSS selector to help resolve conflicting declarations.
- Selector specificity is commonly represented by three columns: **`ID – CLASS – ELEMENT`**, written as **`0-0-0`**.
- The three numbers represent:
  - **First number (ID):** ID selectors.
  - **Second number (CLASS):** Class selectors, attribute selectors, and pseudo-classes.
  - **Third number (ELEMENT):** Type selectors (HTML elements) and pseudo-elements.

| Selector | Weight |
|---|---|
| `button` | `0-0-1` |
| `.submit-button` | `0-1-0` |
| `#task-form` | `1-0-0` |

<!--
- Specificity compares selectors only after earlier cascade priorities are equal.
- The columns are compared left to right; they are not summed as a decimal value.
- Combinators and the universal selector add no specificity.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Cascade/Specificity
-->
