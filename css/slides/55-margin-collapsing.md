---
layout: pageBarTwoCols
class: content-offset
---

# Why Do Vertical Margins Collapse?

::left::

```css
.heading { margin-bottom: 24px; }
.paragraph { margin-top: 16px; }
```

For adjacent block boxes in normal flow, the gap is usually **24px**, not 40px.

::right::

**The key idea**

- Vertical margins of certain blocks **combine**.
- They do **not** always add together.
- Horizontal margins do **not** collapse.
- Flex and Grid item margins do not collapse in their layout contexts.

::below::

- Investigate surprising gaps in DevTools instead of compensating with more margins.

<!--
- Explain only the common positive-margin case. Opposite-sign and parent/child cases have additional rules.
- Padding, borders and new formatting contexts can prevent a parent's margin from collapsing with its child's.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_box_model/Mastering_margin_collapsing
-->
