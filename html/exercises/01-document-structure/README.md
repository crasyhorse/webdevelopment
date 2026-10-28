# Exercise — Build a Task Manager HTML Page

## Goal

Create the first version of a **Task Manager** web page using HTML. The goal is to practice constructing a complete HTML document, working with common elements, and organizing content into meaningful groups.

For now, focus on **document structure and HTML fundamentals**. Semantic page landmarks, accessibility improvements, CSS, and JavaScript will be covered in later exercises.

## Requirements

Your page should include the following:

- A complete HTML5 document with the appropriate document declaration, an English language declaration, UTF-8 character encoding, a meaningful browser-tab title, and viewport configuration for mobile devices.
- A prominent **Task Manager** heading, followed by the introductory sentence: **Manage your tasks in one place.**
- A small navigation area containing a **Tasks** link that jumps to the task area on the same page.
- A task area with the heading **Tasks** and an unordered list containing these initial entries:
  - Learn HTML document structure
  - Review semantic HTML
- A form for entering a new task. It should display **New task** as a label, provide a single-line text field, and include a button labeled **Add task**.

## Design considerations

Think about how to group the navigation area and the main task content using ordinary HTML containers. At this stage, use **`<div>` elements for these groups**; you will revisit their meaning and replace them with suitable semantic elements in the next lesson.

Make sure the **Tasks** link points to the corresponding area of the document. Consider which HTML features let you connect a link to a specific element on the same page.

The form is only a structural prototype. **Adding a task does not need to work yet.** Do not add CSS, JavaScript, frameworks, or third-party libraries.

## Check your result

Open your HTML file in a browser and inspect it with Developer Tools.

- Is the document title displayed in the browser tab?
- Are the headings, list items, link, label, input, and button present?
- Does clicking **Tasks** target the task area?
- Does the Elements panel show the document structure you intended?

**Expected result:** A simple, unstyled Task Manager page that will serve as the starting point for the next exercise on semantic HTML.
