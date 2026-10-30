---
layout: pageBar
class: content-offset
---

# Live coding: Refactor the Task Manager

1. Group the page heading and navigation in `<header>`.
2. Keep the task list inside `<main>` and a named `<section>`.
3. Use headings, a list, a label, and a native button.
4. Inspect the DOM and accessibility information.

<DemoButton url="https://github.com/REPLACE_OWNER/REPLACE_REPO/tree/main/live-coding/html-semantic-refactor" />

<!--
- Open `demo/semantic-html/index.html`, which is identical to `solutions/document-structure/index.html`. The completed version is `solutions/semantic-html/index.html`.
- Move the h1 and nav into a header; keep main for primary page content.
- Give the task section a heading with a stable id; use aria-labelledby if demonstrating a named section.
- Keep tasks as li elements in a ul; explain why a list is better than paragraphs or line breaks.
- Show that the existing label is bound to its input and the button is already semantic.
- Compare page structure in the Elements and Accessibility panels; no CSS or JavaScript is required.
- The GitHub URL is a placeholder until the demo repository is published.
-->
