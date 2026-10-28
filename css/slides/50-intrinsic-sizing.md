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
- Both examples use a 360px width, 1rem padding, and border-box sizing.
- With height: auto, block height grows with text and font size.
- With height: 120px, overflowing text remains visible by default (overflow: visible).
- Try increasing browser zoom or translating the content to a longer language.
- The term intrinsic sizing is broader: min-content, max-content and fit-content
  are related sizing keywords, but this slide contrasts content-driven height with fixed height.
-->
