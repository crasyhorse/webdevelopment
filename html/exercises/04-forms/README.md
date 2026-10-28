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
- What must a server validate even if the browser already checked the form?

## Check your result

Open your page in a browser and try these cases:

- Submit with an empty task name, then with only two characters. Does native validation prevent submission?
- Submit a task with at least three characters. Can you identify the task name, priority, and optional due date in the address bar?
- Confirm the refactored priority dropdown has all three options with **Normal** selected initially. Try changing the priority and filling in a due date. Do the submitted values change?
- Use **Network** in Developer Tools to inspect the request method and query parameters.
- Before refactoring, navigate the radio buttons using the keyboard and examine how their group is labeled. After refactoring, navigate the dropdown. Do all controls still have meaningful accessible names?
- Verify that the page still has the original task list after a submission: this exercise does **not** save tasks.


## Explore form submission in DevTools

Use your completed form for these experiments. You can make temporary changes to the form attributes and restore the original GET form afterward. **No JavaScript or backend implementation is required.**

1. **Inspect a GET submission.** Open DevTools → **Network** and submit a valid task. Find the document request. Which HTTP method was used? Where do the `task`, `priority`, and `due` values appear? Compare them with the query string in the address bar.
2. **Compare with POST.** Temporarily change the form to `method="post"`. Submit valid values and inspect the request in **Network**. Where are the values now? Look at the request's **Payload** and **Headers**. Which `Content-Type` is sent when no `enctype` is specified? Can you recognize the `name=value` pairs and the encoding of spaces?
3. **Try a file upload.** Temporarily add a labeled `<input type="file" name="attachment">`, set the form to `method="post"` and `enctype="multipart/form-data"`, and select a small file. Inspect the request's **Content-Type** and payload in **Network**. What is the `boundary` parameter for? Can you identify the file field name, filename, file MIME type, and separate form fields? How does this body differ from `application/x-www-form-urlencoded`?
```html
<div>
    <label for="attachment">Attachment</label>
    <input
        id="attachment"
        name="attachment"
        type="file">
</div>
```
4. **Test validation before submission.** Try submitting an empty or too-short task name. Does the browser send a request? What do you observe in the form and Network panel?

**Tip:** Enable **Preserve log** in Network before submitting, because navigating to a new page can clear the request list. Your local development server may reject POST with a 404 or 405 response; that is expected without a receiving endpoint. The experiment is about inspecting the outgoing request, not successfully creating a task. If your server does not show a POST request, use a development server that accepts incoming requests for inspection.

After experimenting, restore the original GET form and remove the temporary file control.

**Expected result:** The same accessible Task Manager, now with browser-provided validation and additional native form controls. A successful GET submission reloads the document with query parameters; no task is actually created.

**Real-world note:** Creating a task changes server-side state and would normally use POST to a backend. Validation must also run on the server.
