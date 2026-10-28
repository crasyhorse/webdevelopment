---
layout: pageBar
class: content-offset
---

# Organize by Block, Not by Property

```css
/* index.css — the load order is the architecture */
@import url("tokens.css");
@import url("base.css");
@import url("task-list.css");
@import url("task-form.css");
```

- One file per BEM block — the block boundary **is** the file boundary.
- Shared foundations first (`tokens`, `base`), components after.
- Split by *what a file is about*, not by colors vs. layout vs. fonts.

<!--
- `@import` must come first in a file and costs an extra request round-trip per import; real projects bundle with a build tool — outlook only, this workshop stays dependency-free.
- Alternative preview: `<link>` tags in the HTML head in the same order — same architecture, no CSS nesting of requests.
- Why by block? A bug report names a component ("the task list"), not a property ("some margin"). File-per-block turns "where is this styled?" into a single jump.
- Splitting by property type (colors.css, layout.css) re-tangles every component across files — the reader reassembles the block on every change.
- Discussion: how many files are too many? (Follow the blocks; if a file has one rule, it is probably an element of a block that already has a file.)
-->
