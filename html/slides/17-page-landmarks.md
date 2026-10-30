---
layout: pageBarTwoCols
class: content-offset
---

# Organize the page with landmarks

::left::

- `<header>` — introductory content
- `<nav>` — major navigation links
- `<main>` — dominant page content
- `<footer>` — footer for a page or section
- `<aside>` — tangentially related content

::right::

```html
<header>
  <h1>Task Manager</h1>
  <nav aria-label="Main navigation">
    <a href="#tasks">Tasks</a>
  </nav>
</header>
<main>
  <!-- primary content -->
</main>
```

<!--
- These elements help describe page regions without needing generic div wrappers.
- The main element represents the dominant content; normally a page has one visible main region.
- header and footer describe context: page-level or section-level depending on placement.
- nav is for important navigation groups, not every incidental group of links.
- If there are multiple navigation landmarks, give them distinguishable accessible names.
- Semantic landmarks are especially useful for screen-reader navigation and automated testing.
- Semantic landmarks help assistive technology and make role-based queries for navigation and main regions possible.
-->
