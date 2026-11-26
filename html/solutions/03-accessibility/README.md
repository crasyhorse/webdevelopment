# Exercise 03 — Design Decisions and Answers

## 1. Which landmarks or regions would benefit from an accessible name?

- The navigation landmark benefits from a descriptive name: `<nav aria-label="Main navigation">`.
- The task `<section>` benefits from an accessible name so it can be identified as a region.
- **Why:** Named landmarks and regions help assistive-technology users distinguish and navigate page areas. The existing `<main>` landmark does not need a redundant name here.

## 2. Can an existing visible heading provide that name instead of repeating its text in an ARIA attribute?

- **Yes:** `<section id="tasks" aria-labelledby="tasks-heading">`.
- The visible heading is `<h2 id="tasks-heading">Tasks</h2>`.
- **Why:** `aria-labelledby` reuses visible text as the accessible name; it avoids maintaining a second copy in `aria-label`.

## 3. How is a form control's **accessible name** different from its **accessible description**?

- **Name:** Identifies the control, here **New task** from `<label for="task-name">`.
- **Description:** Adds usage guidance, here **Enter a short description of the task.** from the help paragraph.
- **Why:** The name answers *what the control is*; the description provides additional context. They are separate accessibility properties.

## 4. Which HTML attributes create an explicit relationship between a label and an input?

- `<label for="task-name">New task</label>` connects to `<input id="task-name" ...>`.
- The `for` value must match the input's `id` exactly.
- **Why:** This supplies an explicit accessible name and makes clicking the visible label focus the input.

## 5. How can the helper text be associated with the input without hiding it from sighted users?

- Keep a visible `<p id="task-help">Enter a short description of the task.</p>`.
- Add `aria-describedby="task-help"` to the input.
- **Why:** Everyone sees the instruction, while assistive technologies can expose it as the input's accessible description.

## 6. What is the default behavior of a button inside a form?

- A `<button>` without an explicit `type` defaults to **submit** when it is associated with a form.


## 7. Which information belongs in `data-*`, rather than in ARIA attributes?

- Application-specific state such as `data-view="active"` belongs in `data-*`.
- Accessible names and descriptions belong in native HTML relationships or appropriate ARIA naming/description attributes.
- **Why:** `data-*` is application metadata; it does **not** by itself announce state or meaning to assistive technologies. Do not treat it as a substitute for ARIA semantics.
