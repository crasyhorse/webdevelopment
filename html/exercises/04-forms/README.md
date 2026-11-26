# Exercise 04 — Native HTML Forms & Validation

## Goal

Extend the **Task Manager** from Exercise 03 so that the browser can validate and submit task data using **native HTML features**. You should not need JavaScript or a backend for this exercise.

The starter page already contains a labeled task input and a **Priority** radio-button group using `<fieldset>` and `<legend>`. First explore why the radio buttons belong to a named group, then refactor that group into a dropdown. Preserve the existing semantic structure and accessibility improvements.

## Requirements

Start with the provided Exercise 04 starter page, which builds on the completed Task Manager from Exercise 03.

- Make entering a **task name** mandatory. Accept names containing **3 to 80 characters**.
- Inspect the provided **Priority** radio buttons. Explain how `<fieldset>` and `<legend>` group related controls and why the radio buttons share `name="priority"`.
- **Refactor the Priority fieldset into a `<select>`** containing `<option>` elements for **Low**, **Normal**, and **High**. Keep `name="priority"` and make **Normal** the default selection.
- Let people optionally specify a **due date** using an appropriate native control.
- Ensure every form control has a meaningful visible label and a submitted field name.
- Make **Add task** a genuine form submission control.
- For this local exercise, submit using **GET to the current page** so you can inspect the submitted data in the URL. Do not build a backend.
- Preserve the current headings, navigation, task list, accessible names, and descriptive help text.

## Design considerations

Use what the browser already provides. You don't need custom JavaScript for required fields, length constraints, form controls, or basic submission.

Consider:

- Which form attributes express **required** and **length** constraints?
- How do `<fieldset>` and `<legend>` label a group of radio buttons, and how does a `<label>` identify a `<select>`?
- What changes for keyboard interaction and presentation when the priority radio group becomes a dropdown?
- Which native control works best for a **fixed set of choices**? Which for a **date**?
- What is the difference between an input's `id` and its `name`?
- What happens to the URL after submitting a form using GET?
- Why is GET useful for this demonstration but unsuitable for **creating a task** in a real application?

## Check your result

Open your page in a browser and try these cases:

- Submit with an empty task name, then with only two characters. Does native validation prevent submission?
- Submit a task with at least three characters. Can you identify the task name, priority, and optional due date in the address bar?
- Confirm the refactored priority dropdown has all three options with **Normal** selected initially. Try changing the priority and filling in a due date. Do the submitted values change?
