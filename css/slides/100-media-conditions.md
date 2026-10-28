---
layout: pageBarTwoCols
class: content-offset
---

# Combining Media Conditions

::left::

```css
.actions { display: flex; gap: 8px; }

@media (max-width: 600px) and
       (max-height: 400px) {
  .actions { flex-direction: column; }
}
```

- `and` requires both conditions to match.

::right::

<div>
  <img src="/images/media-conditions-and.svg" alt="Actions stack at viewport dimensions 500 by 350 pixels; at 800 by 350 pixels only the height condition matches and the actions remain in a row."
       class="block mx-auto w-full"
       style="max-height: 29vh; object-fit: contain;" />
</div>

::below::

**What is the meaning of this media query?**

```css
@media (max-width: 400px), (max-height: 300px) {
  .actions { flex-direction: column; }
}
```

<!--
- Media queries can combine multiple conditions to respond to more specific viewport constraints.
- The `and` operator requires all connected conditions to match.
- Explain the illustration: at 500 × 350px, both conditions match and the buttons are arranged vertically. At 800 × 350px, only the height condition matches and the buttons remain in a row.
- Both `max-width` and `max-height` include the specified boundary value.
- Ask attendees to explain the second media query before revealing the answer.
- A comma separates alternative media queries and acts like a logical OR: at least one of the queries must match.
-->