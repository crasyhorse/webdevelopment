---
layout: pageBarTwoCols
class: content-offset
---

# Shorthand — Margin, Padding & Border

::left::

```css
/* all four sides */
padding: 12px;

/* top/bottom | left/right */
padding: 12px 24px;

/* top | left/right | bottom */
margin: 8px 16px 24px;

/* top | right | bottom | left */
margin: 8px 16px 24px 32px;
```

::right::

```css
.task-card {
  border-width: 2px;
  border-style: solid;
  border-color: #64748b;
}

/* The same result in one declaration: */
.task-card {
  border: 2px solid #64748b;
}
```

::below::

- Use shorthand when several related values belong together
- Use a specific property such as `margin-bottom` when changing only one side.
- The following applies to `margin` and `padding`: Four values follow the clock: **top → right → bottom → left**.
