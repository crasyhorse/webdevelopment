---
layout: pageBarTwoCols
class: content-offset
---

# Let Content Determine Size

::left::

**Content-driven sizing**

```css
.task-card {
  width: auto;
  box-sizing: border-box;
  height: auto;
}
```

<div class="mt-5"></div>

<div>
  <img src="/images/intrinsic-auto-height.svg" class="block mx-auto w-full" style="max-height: 20vh; object-fit: contain;" alt="A card with automatic height grows to contain all its text." />
</div>

::right::

**Fragile fixed sizing**

```css
.task-card {
  width: auto;
  box-sizing: border-box;
  height: 120px;
}
```

<div class="mt-5"></div>

<div>
  <img src="/images/intrinsic-fixed-height.svg" class="block mx-auto w-full" style="max-height: 20vh; object-fit: contain;" alt="A card fixed at 120px tall cannot contain its text, which overflows." />
</div>

::below::
<div class="mt-5"></div>

<p style="text-align: center;">Prefer <strong>natural height</strong> when content may change. A fixed height risks <strong>overflow</strong>.</p>

<!--
- Both examples are normal block-level divs with `width: auto` and `border-box` sizing.
- With `width: auto`, a normal block fills the available inline space of its containing block;
  it does not shrink to the text width.
- With `height: auto`, block height grows with text and font size.
- With `height: 120px`, overflowing text remains visible by default (`overflow: visible`).
- Neither example specifies a `padding` declaration or a fixed width: those dimensions come from other styles,
  if any are present in a running demo.
-->
