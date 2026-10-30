---
layout: pageBar
---

# ARIA describes state; JavaScript changes it

```html
<button type="button" aria-expanded="false"
        aria-controls="help-panel">Show help</button>
<div id="help-panel" hidden>
  Enter a task name to create a task.
</div>
```

- Toggle **both** `hidden` and `aria-expanded` when implementing the interaction.

<!--
- The button has native keyboard behavior; ARIA does not supply the toggle.
- aria-controls refers to the panel id.
- hidden keeps the collapsed content out of normal layout and accessibility exposure.
- When the panel opens, remove hidden and set aria-expanded to true.
- Do not promise that aria-controls alone moves focus or implements relationships visually.
-->
