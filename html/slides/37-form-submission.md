---
layout: pageBar
class: content-offset
---

# How native form submission works

```html
<form action="/task" method="post">
  <label for="task-name">New task</label>
  <input name="task" id="task-name" required>
  <button>Add task</button>
</form>
```

<div class="mt-5"></div>

- **`name`** identifies the submitted field.
- **`method`** chooses how values are sent (`get` or `post`).
- **`action`** specifies the destination.

<!--
- Forms collect named, successful controls into entries that can be submitted automatically.
- `id` is useful for label association, but name determines the field key in form submission.
- A button without a type defaults to submit inside a form
- With `method=post`, the browser sends the form data in the HTTP request body.
-->
