# Exercise 04 — Design Decisions and Answers

## 1. Which form attributes express **required** and **length** constraints?

- `required` disallows an empty task name.
- `minlength="3"` and `maxlength="80"` constrain the text length for user-entered values.

## 2. How do `<fieldset>` and `<legend>` label a group of radio buttons?

- `<fieldset>` groups the three related radios; `<legend>Priority</legend>` names the group.
- Each radio has its own `<label for="...">`, identifying **Low**, **Normal**, or **High**.
- The radios share `name="priority"`, making them one mutually exclusive choice group for the form.


## 3. What changes for keyboard interaction and presentation when the priority radio group becomes a dropdown?

- **Radios:** Separate controls; users typically move between options with arrow keys after reaching the group, with platform/browser-specific details.
- **Select:** One compact control in the tab order; options are navigated using native select keyboard controls, which vary by platform/browser.
- **Why:** Both use native semantics, but the select occupies less space and does not display all choices simultaneously.

## 4. Which native control works best for a **fixed set of choices**? Which for a **date**?

- For the three fixed priorities, **either radio buttons or a `<select>` is valid**; this exercise explicitly asks to refactor to a `<select>`.
- A native `<input type="date">` is suitable for the optional due date.
- **Why:** The browser supplies selection and date-input behavior without custom scripts, though the date UI varies across browsers.

## 5. What is the difference between an input's `id` and its `name`?

- `id` identifies an element **within the document** and connects it to `<label for="...">` or other ID references.
- `name` is the **field name** used in the submitted form data.
- **Example:** `id="task-name" name="task"` identifies the same control in two different contexts; GET submission uses `task=...`, not `task-name=...`.

## 6. What happens to the URL after submitting a form using GET?

- The browser adds successful named control values to the current page URL's **query string**.
- With task **Review docs**, default priority **Normal**, and no due date, the result can look like: `?task=Review+docs&priority=normal&due=` (exact encoding/URL may vary).
- **Why:** This makes submitted values visible in the address bar and easy to inspect. The form does not actually create or store a task.

## 7. Why is GET useful for this demonstration but unsuitable for **creating a task** in a real application?

- **Demo:** GET exposes the serialized fields clearly in the URL; no backend is needed to observe the request parameters.
- **Real application:** Creating a task changes server-side state and should use an appropriate state-changing request, typically POST, with server-side handling.
- **Why:** GET is intended for safe retrieval, can be bookmarked/repeated/cached, and exposes field values in URLs and histories. Do not send sensitive information in a GET query.
