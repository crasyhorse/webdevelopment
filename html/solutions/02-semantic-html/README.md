# Exercise 02 — Design Decisions and Answers

## 1. Which content introduces the application, and which content is its main focus?

- **Introduction:** `<header>` contains the Task Manager `<h1>`, introductory paragraph, and navigation.
- **Main focus:** `<main>` contains the task area, task list, and task-entry form.
- **Why:** Structural elements describe the purpose of each region rather than only grouping elements visually.

## 2. Is the **Tasks** link part of a meaningful navigation area?

- **Yes.** It is a link for navigating to a specific part of the current document.
- **Why:** `<nav>` represents a section of navigation links. The `href` fragment points to the element with `id="tasks"`.

## 3. Does the task area represent a distinct section of the document?

- **Yes.** `<section id="tasks">` groups the related heading, list, and form.
- **Why:** A section is appropriate for a thematically distinct part of a document, usually identified by a heading.

## 4. Is a generic container still necessary, or can a more descriptive element take its place?

- Prefer `<header>`, `<nav>`, `<main>`, `<section>`, `<ul>`, `<form>`, and headings where the content has that meaning.
- Keep `<div>` only when no suitable semantic element describes the grouping, for example a styling or layout wrapper.
- **Why:** Choose elements based on their meaning, not their default browser styling. A `<div>` does not itself communicate a semantic role.

## 5. How do headings and in-page links help readers navigate the document?

- **Headings:** `<h1>` names the page; `<h2>` introduces the task section. Heading structure helps readers and assistive-technology users locate content.
- **In-page link:** `href="#tasks"` navigates to the matching `id="tasks"` in the same page.
- **Why:** Clear headings and working fragment links provide orientation without requiring JavaScript.