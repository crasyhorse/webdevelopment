---
layout: pageBar
class: content-offset
---

# Exercise: Enhance the Task Manager form

1. Add **native validation** for a meaningful task name.
2. Collect a **priority** and an optional **due date**.
3. Submit the form **without JavaScript** and inspect the request in DevTools.

<Button
    url="https://github.com/crasyhorse/webdevelopment/tree/html/html/exercises/04-forms/README.md"
    type="exercise"
/>

<img src="/images/exercise.svg" alt="Comic illustration of a coding exercise" class="w-[650px] block mx-auto" />

<!--
- Start with the exact solution of Exercise 03, with the existing label and aria-describedby preserved.
- Attendees should select appropriate native controls rather than implement JavaScript validation.
- The task name should be required with a minimum of three and a maximum of eighty characters.
- Include a priority control with at least three named choices and an optional due date.
- Review why a task name uses `<input type="text">`, the due date uses `<input type="date">`, and priority can use `<select>` with `<option>` choices.
- Remind attendees that each control needs a visible `<label>` and a `name` attribute for submission.
- Change the Add task button from type=button to type=submit.
- Use GET for this local demonstration only and inspect the resulting query parameters.
- Verify the form blocks empty and too-short task names without custom JavaScript.
- Explain that submitting does not add a task to the list and that a real application would POST to a backend.
-->
