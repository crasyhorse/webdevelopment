---
layout: pageBarTwoCols
class: content-offset
---

# Floats — Text Wraps Around Content

::left::

```html
<article class="task-description">
  <img class="task-icon" src="task.svg" alt="" />
  <p>Review the pull request and discuss the changes...</p>
</article>
```

```css
.task-icon {
  float: left;
  margin-right: 1rem;
}
```

::right::

**Floats** take a box out of normal flow while allowing inline content to wrap around it.

```css
.task-description {
  display: flow-root;
}
```

- `clear: both` moves an element below earlier floats.
- `flow-root` contains floats within their parent.

::below::

- Use floats for **text wrapping**, not for modern application page layout. Flexbox and Grid come later.

<!--
- Introduce float: left and float: right, then clear: left/right/both.
- A float is not a full layout system; surrounding text wraps, which is the intended use.
- A parent with only floated children may have zero content height; display: flow-root creates a block formatting context and contains the float.
- Avoid the historical clearfix hack in new demonstrations.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/float
-->
