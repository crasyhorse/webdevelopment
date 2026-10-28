---
layout: pageBarTwoCols
class: content-offset
---

# Images & Form Controls Are Boxes Too

::left::

**Avoid image overflow**

```css
.task-icon {
  display: block;
  max-width: 100%;
  height: auto;
}
```

An image can keep its aspect ratio while shrinking to fit its container.

::right::

**Size controls predictably**

```css
.task-form__input {
  box-sizing: border-box;
  width: 100%;
  min-height: 2.75rem;
  padding: 0.5rem 0.75rem;
}
```

Inputs and buttons have user-agent styles worth inspecting.

::below::

- Images and controls may have **intrinsic dimensions** or browser defaults: inspect before overriding.

<!--
- Explain replaced elements very briefly: image content is supplied by an external resource with its own intrinsic dimensions.
- Avoid forcing both width and height on images when aspect ratio preservation is desired.
- Some form controls vary across operating systems and browsers; box-sizing and careful padding improve predictability.
-->
