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

- The larger positive vertical margin wins.
- The two margins **collapse** to `24px`.
- Horizontal margins do **not** collapse.

::right::

<div>
  <img
    src="/images/margin-collapsing.svg"
    alt="Comparison of non-collapsing and collapsing vertical margins. Without collapsing, 24 pixels plus 16 pixels would create a 40 pixel gap. With collapsing, the resulting gap is 24 pixels."
    class="block mx-auto w-full"
    style="max-height: 48vh; object-fit: contain;"
  />
</div>

<!--
- Explain only the common positive-margin case. Opposite-sign and parent/child cases have additional rules.
- In the illustration, `24px` and `16px` are both positive vertical margins. The visible gap becomes `24px`, the larger one.
- Padding, borders and new formatting contexts can prevent a parent's margin from collapsing with its child's.
- Horizontal margins do not collapse, and item margins inside Flexbox or Grid do not collapse either.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_box_model/Mastering_margin_collapsing
-->
