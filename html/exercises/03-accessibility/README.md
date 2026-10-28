# Exercise 03 — Improve the Task Manager's Accessibility

## Goal

Improve the **Task Manager** from Exercise 02 so that its structure and form are easier to understand and use with assistive technologies.

The page already has semantic HTML elements. Your task is to **enhance its accessibility** by giving important areas clear names, connecting form information to the right control, and examining what the browser exposes in its accessibility tree. Preserve the existing content and keep the application simple.

## Requirements

Start with your completed Task Manager page from Exercise 02.

- Make the page's navigation landmark identifiable by a descriptive **accessible name**.
- Ensure that the task section has an accessible name derived from its existing heading.
- Associate the **New task** label explicitly with its text input.
- Add a short, visible instruction for the task input: **Enter a short description of the task.** Make sure assistive technologies can associate that description with the input.
- Review the **Add task** button's behavior. This exercise does not implement task creation, so it should not accidentally submit the form.
- Give the task section a custom data attribute indicating that the current view is **active**. These attributes are for later exercises and do not replace accessibility semantics.
- Preserve the existing page structure, headings, links, list entries, and form controls.

## Design considerations

Prefer **native HTML semantics** and use ARIA attributes to provide information that the HTML alone does not already express. Do not add ARIA roles when an appropriate HTML element supplies the role automatically.

Some questions to guide your decisions:

- Which landmarks or regions would benefit from an accessible name?
- Can an existing visible heading provide that name instead of repeating its text in an ARIA attribute?
- How is a form control's **accessible name** different from its **accessible description**?
- Which HTML attributes create an explicit relationship between a label and an input?
- How can the helper text be associated with the input without hiding it from sighted users?
- What is the default behavior of a button inside a form, and is that behavior appropriate here?
- Which information belongs in `data-*`, rather than in ARIA attributes?

The form remains a structural prototype.

## Check your result

Open the page in a browser and inspect it using Developer Tools, including the **Accessibility** panel or accessibility tree where available.

- Does the navigation expose its intended role and an understandable accessible name?
- Is the task section identifiable by the text of its heading?
- Does the input have the accessible name **New task** and the additional description **Enter a short description of the task.**?
- Are the helper text and label still visible on the page?
- Does the **Tasks** link still navigate to the task section?
- Does clicking **Add task** avoid submitting or reloading the page?
- Can you distinguish the roles, names, and descriptions in the accessibility tree from the underlying DOM elements and attributes?

**Expected result:** The same unstyled Task Manager, now with clearly named navigation and task regions, an explicitly labeled and described input, and a button suitable for a future JavaScript implementation.
