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


<Button 
    url="http://localhost:5500/html/demo/04-rendering/index.html" 
    type="demo"
/>

<!--
- Open `demo/04-rendering/index.html` and its `styles.css`.
- Use a small repeatable interaction to make activity visible.
- A width change may affect layout; a color change normally does not.
- The presence of work depends on browser optimizations and recording conditions.
- Relate the observed rendering stages back to the DOM/CSSOM explanation.
- Keep this brief; deeper CSS performance work belongs in the CSS workshop.
-->
