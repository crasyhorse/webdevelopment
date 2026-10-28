---
layout: pageBar
class: content-offset
---

# Native validation in HTML

```html
<label for="task-name">New task</label>
<input id="task-name" name="task" type="text"
       required minlength="3" maxlength="80">
<button type="submit">Add task</button>
```

- **`required`** rejects an empty task name.
- **`minlength` / `maxlength`** constrain user-entered text.
- Invalid forms are **not submitted** through normal interactive submission.

<!--
- minlength checks user-provided text, not all possible programmatic changes; do not frame it as a security guarantee.
- maxlength limits user editing of text fields; other constraints include type=email, min, max and pattern.
- The browser exposes validity states through its Constraint Validation API without requiring an app to call JavaScript.
- Server-side validation must repeat necessary checks because client validation can be bypassed.
-->
