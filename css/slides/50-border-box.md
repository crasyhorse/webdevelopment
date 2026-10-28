---
layout: pageBarTwoCols
class: content-offset
---

# `box-sizing`: A Predictable Default

::left::

**Default: `content-box`**

```css
.card {
  width: 300px;
  padding: 20px;
  border: 4px solid;
}
```

The **border-box is 348px wide**.

::right::

**Recommended: `border-box`**

```css
*, *::before, *::after {
  box-sizing: border-box;
}

.card {
  width: 300px;
  padding: 20px;
  border: 4px solid;
}
```

The **border-box is 300px wide**.

::below::

- `border-box` includes padding and borders in the declared width/height; **margins are still outside**.

<!--
- The universal selector reset is common and simplifies calculations.
- `border-box` is not inherited by default; the rule targets pseudo-elements explicitly.
- Content shrinks to leave room for padding and borders within the declared size.
-->
