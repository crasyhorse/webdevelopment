---
layout: pageBarTwoCols
class: content-offset
---

# Controlling Inheritance: `inherit`, `initial`

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
```

::right::

- **`inherit`** forces the property to use its parent's computed value.

- **`initial`** sets the property's CSS-defined initial value (not necessarily the browser's default stylesheet value).

<Button
  url="http://localhost:5500/css/demo/06-inheritance-keywords/index.html"
  type="demo"
/>

<!--
- Parent sets `color: navy`. A child with `color: inherit` uses navy. 
- `color: initial` uses the CSS-defined initial value, not necessarily the same value from the user-agent stylesheet.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/inherit ; https://developer.mozilla.org/en-US/docs/Web/CSS/initial ; https://developer.mozilla.org/en-US/docs/Web/CSS/unset
-->
