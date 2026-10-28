---
layout: pageBarTwoCols
class: content-offset
---

# Border — The Box's Visible Edge

::left::

A **border** surrounds the **content and padding**.

```css
.task-card {
  padding: 1rem;
  border: 2px solid #64748b;
}
```

**Border shorthand**

```css
border: 2px solid #64748b;
/* width | style | color */
```

A border has a **width**, **style**, and **color**.

::right::

<div>
  <img
    src="/images/box-border.svg"
    alt="Task card with the border edge highlighted in dark blue around green padding and blue content."
    class="block mx-auto w-full"
    style="max-height: 47vh; object-fit: contain;"
  />
</div>

::below::

- **Borders** create a visible edge; **margins** create invisible outer space.

<!--
- Border is between padding and margin; its width contributes to the overall rendered box size.
- border is shorthand for border-width, border-style, and border-color.
- Demonstrate the border styles solid, dashed, and dotted in DevTools.
- Without a border style (for example solid), a declared border width and color alone may not paint a visible border.
- The default box-sizing is content-box for most elements; padding and border are then added to specified width.
- For border-box, padding and border fit within specified width.
-->
