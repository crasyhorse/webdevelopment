---
layout: pageBar
---

# From source to pixels

**HTML → DOM**

**CSS → CSSOM**

**DOM + CSSOM → Render tree → Layout → Paint → Composite**

<!--
- This is a simplified conceptual sequence; browser implementations may optimize or overlap work.
- The HTML parser incrementally constructs the DOM.
- The CSSOM describes parsed styles; style computation uses DOM and CSS information.
- The render tree represents renderable content with computed styles.
- Layout calculates geometry, paint records/draws visual output, compositing assembles layers.
-->
