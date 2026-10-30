---
layout: pageBar
---

# Name things without duplicating text

```html
<nav aria-label="Main navigation">
  <a href="#tasks">Tasks</a>
</nav>

<section aria-labelledby="tasks-heading">
  <h2 id="tasks-heading">Tasks</h2>
</section>
```

<!--
- The navigation element already has an implicit navigation role.
- aria-label provides a name when no suitable visible heading exists.
- aria-labelledby reuses the visible heading for the section name.
- A named section can be exposed as a region landmark.
- Avoid unnecessary labels for every element; meaningful names help users navigate.
-->
