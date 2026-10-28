---
layout: pageBarTwoCols
class: content-offset
---

# The `!important` Rule

::left::

```html
<form id="task-form" class="task-form">
  ...
</form>
```

```css
#task-form {
  color: blue;
}

.task-form {
  color: red !important;
}
```

::right::

- Add `!important` **after a declaration's value** to mark it as important.
- **Importance takes precedence over specificity**: here, the form's color is **red**, despite the ID selector's higher specificity.
- Use `!important` **sparingly**, for justified overrides rather than to fix poorly organized CSS.

<!--
- Both selectors match the same form. Assume normal and important author declarations in the same unlayered stylesheet and no active transition.
- The important class declaration wins over the normal ID declaration.
- !important does not increase a selector's specificity. It changes the declaration's priority in the cascade.
- !important affects an individual declaration, not an entire CSS rule.
- Avoid using !important as a default solution to specificity conflicts. Prefer fixing the underlying selectors or stylesheet structure.
-->
