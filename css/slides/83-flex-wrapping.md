---
layout: pageBarTwoCols
class: content-offset
---

# Flex Wrap & Gap

::left::

<div class="mt-10"></div>

```css
.actions {
  display: flex;
  width: 416px;
  flex-wrap: wrap;
  gap: 12px;
}
.actions__button { flex: 0 0 128px; }
```

<div class="mt-16"></div>

```css
.actions {
  /* Same container and item styles */
  flex-wrap: nowrap;
}
```

<style>
.slidev-code {
  font-size: 0.75rem !important;
  line-height: 1.2 !important;
}
</style>

::right::

<div>
  <img src="/images/flex-wrap-wrap.svg" alt="Four 128px buttons in a 416px container with 12px gaps; wrap fits three on the first line." class="block mx-auto w-full" style="max-height: 25vh; object-fit: contain;" />
</div>

<div>
  <img src="/images/flex-wrap-nowrap.svg" alt="Four 128px buttons in a 416px container with 12px gaps; nowrap overflows." class="block mx-auto w-full" style="max-height: 25vh; object-fit: contain;" />
</div>

<!--
- Answer 5: both examples use the same 416px container, 128px bases and 12px gap. Only `flex-wrap` changes.
- Three buttons and two gaps need 408px; four buttons and three gaps need 548px.
- `flex: 0 0 128px` prevents shrinking and growing, so the nowrap case overflows.
- With `gap: 8px 24px` the first value is row gap, the second column gap.
-->
