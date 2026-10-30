---
layout: pageBar
class: content-offset
---

# Demo: Trace rendering in DevTools

1. Open the Task Manager page and its **Elements** panel.
2. Change a CSS property (for example, `color` or `width`).
3. Record the interaction in **Performance**.
4. Identify style, layout and paint activity.
5. Compare a color change with a width change.


<DemoButton url="https://github.com/REPLACE_OWNER/REPLACE_REPO/tree/main/live-coding/live-rendering" />

<!--
- Open `demo/rendering/index.html` and its `styles.css`; the HTML is identical to `solutions/accessibility/index.html` except for its stylesheet link.
- Use a small repeatable interaction to make activity visible.
- A width change may affect layout; a color change normally does not.
- The presence of work depends on browser optimizations and recording conditions.
- Relate the observed rendering stages back to the DOM/CSSOM explanation.
- Keep this brief; deeper CSS performance work belongs in the CSS workshop.
-->
