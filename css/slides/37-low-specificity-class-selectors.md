---
layout: pageBarTwoCols
class: content-offset
---

# The Solution — Low-Specificity Class Selectors

::left::

**HTML — style the component directly**

```html
<button class="button button--danger">
  Delete task
</button>
```

**No dependence on parent IDs or HTML nesting.**

::right::

**CSS — two simple class rules**

```css
.button {
  background-color: blue;
}

.button--danger {
  background-color: red;
}
```

**Specificity: `0-1-0` for both selectors.**

::below::

- **Result: The button is red.** With equal cascade priority and specificity, the later rule wins.
- **Benefits:** Easy overrides, reusable components, predictable styles, and less dependence on HTML structure.

<!--
- Connect this directly to the previous slide. 
- The HTML element has two classes. 
  - The base .button class provides shared styling.
  - .button--danger identifies a specific variation.
- Both class selectors have specificity 0-1-0. The .button--danger declaration appears later, so it wins when origin, importance and other earlier cascade criteria are equal.
- No ID selector or ancestor chain is required. The component can be moved to another section without changing the selectors.
- A single-class selector is straightforward to override and encourages reuse.
- The variant class remains alongside the base class; it does not replace it.
- This is a naming and organization approach, not a new CSS language feature.
-->
