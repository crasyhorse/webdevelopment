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
- id is useful for label association, but name determines the field key in form submission.
- A button without a type defaults to submit inside a form; use type=submit explicitly here.
- With method=post, the browser sends the form data in the HTTP request body.
- An empty action submits to the current document URL; this is a teaching demonstration, not real task creation.
- POST sends data in the request body and is usually appropriate for actions that create or change server-side state.
- GET appends the form data to the URL as query parameters and is usually appropriate for retrieving information.
-->
