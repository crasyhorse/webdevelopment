# Exercise 05 — Normal Flow & Floats: Reference Solution

The completed files demonstrate a floated task icon and an action button placed beneath it.

- `.task-card__icon { float: left; margin-right: 12px; }` moves the icon to the left while the paragraph's line boxes flow beside it.
- `.task-card__action { clear: both; }` ensures the button starts below the floated icon.
- For **float right**, change the icon rules to `float: right; margin-left: 12px; margin-right: 0;`. The button still clears both sides.
- Without `clear: both`, the short paragraph leaves room for the button to begin beside the float; the result may look crowded.

Open `index.html` in a browser, inspect the element boxes in DevTools, and try both float directions.

**Instructor note:** `clear` affects the position of the following block; it does **not** itself cause the containing `.task-card` to enclose a float. A formatting context such as `display: flow-root` is useful when containment is the goal.
