---
layout: pageBarTwoCols
class: content-offset
---

# Box Sizing — `border-box`

::left::

```css
.card {
  box-sizing: border-box;
  width: 300px;
  padding: 20px;
  border: 4px solid;
}
```

**Declared width = total border-box width**

```text
300 - 20 - 20 - 4 - 4
= 252px
```

- Total rendered width: **300px**
- Padding: **20px** on each side
- Border: **4px** on each side
- **Content width: 252px**

::right::

<div>
  <img
    src="/images/box-sizing-border-box.svg"
    alt="Border-box diagram: the declared 300px width includes 20px padding and 4px border per side, leaving 252px for content."
    class="w-full mx-auto block"
    style="max-height: 51vh; object-fit: contain;"
  />
</div>

::below::

`border-box` keeps the **total box width** at `300px`; padding and border fit inside it.

<!--
- Contrast with the preceding slide: the CSS declarations are identical
  except for box-sizing.
- Here the declared width applies to the entire border box.
- Subtract the padding (40px total) and borders (8px total) to find the
  content width: 300 - 40 - 8 = 252px.
- Margins remain outside the declared width even with border-box.
- This is often convenient for component sizing. A common global reset is:
  *, *::before, *::after { box-sizing: border-box; }
- Very large padding/borders can leave no space for content; the content box
  cannot have a negative size.
- MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing
-->
