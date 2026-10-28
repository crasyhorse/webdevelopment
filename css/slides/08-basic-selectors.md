---
layout: pageBar
class: content-offset
---

# Basic CSS Selectors

| Rule | Meaning |
|---|---|
| `button { }` | Targets every `<button>` element. |
| `.task-card { }` | Targets elements with the class `task-card`. |
| `#task-form { }` | Targets an element with the ID `task-form`. |
| `* { }` | Targets every element. |

**Class selectors are useful for styling reusable components.**

<Button url="http://localhost:5500/css/demo/02-basic-selectors/index.html" type="demo" />

<!--
- Selectors identify elements; declarations inside braces apply styles.
- HTML IDs must be unique within a document; IDs are generally not needed for reusable styling.
- Class selectors target reusable elements; class names are chosen by the author.
- Universal * matches all elements and is especially useful for some base rules.
- Show a few selected elements using the Elements panel.
-->
