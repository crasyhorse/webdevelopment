---
layout: pageBarTwoCols
class: content-offset
---

# Controlling Inheritance: `inherit`, `initial`, `unset`

::left::

```css
.task-card {
  color: navy;
}

.inherit-example {
  color: inherit;
}

.initial-example {
  color: initial;
}

.unset-example {
  color: unset;
}
```

::right::

- **`inherit`** forces the property to use its parent's computed value.

- **`initial`** sets the property's CSS-defined initial value (not necessarily the browser's default stylesheet value).

- **`unset`** acts as `inherit` for inherited properties; otherwise, it acts as `initial`.

<Button
  url="http://localhost:5500/css/demo/06-inheritance-keywords/index.html"
  type="demo"
/>

<!--
- Parent sets color: navy. A child with color: inherit uses navy. A child with color: unset also inherits navy because color is inherited by default.
- color: initial uses the CSS-defined initial value, not necessarily the same value from the user-agent stylesheet; avoid claiming it is always a particular named color.
- For non-inherited padding, unset acts like initial, while inherit explicitly copies the parent padding.
- A CSS-wide keyword can replace the whole value in a declaration; the exact rendered text color can vary with higher-priority/user styles and browser system color settings.
- Open the local demo and inspect computed styles. Do not confuse inherit/initial/unset with revert and revert-layer, which are not taught here.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/inherit ; https://developer.mozilla.org/en-US/docs/Web/CSS/initial ; https://developer.mozilla.org/en-US/docs/Web/CSS/unset
-->
