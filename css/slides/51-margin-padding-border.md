---
layout: pageBarTwoCols
class: content-offset
---

# Margin, Padding & Border

::left::

**Spacing direction**

- `padding` separates **content from border**.
- `margin` separates a box from **other boxes**.
- Border styles are visible, unlike margins.

```css
.task-card {
  padding: 1rem;
  margin-bottom: 1.5rem;
  border: 1px solid #cbd5e1;
}
```

::right::

**Shorthand order: top, right, bottom, left**

```css
/* all four sides */
padding: 1rem;

/* vertical | horizontal */
padding: 1rem 2rem;

/* top | horizontal | bottom */
margin: 1rem 2rem 3rem;

/* top | right | bottom | left */
margin: 1rem 2rem 3rem 4rem;
```

::below::

- Prefer **padding for space inside** a component and **margin for space outside** it.

<!--
- Demonstrate the shorthand clockwise mnemonic: TRBL.
- You can set border-width/style/color separately; border shorthand is often easiest.
- The CSS background extends through padding but not through the margin area.
-->
