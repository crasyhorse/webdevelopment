---
layout: pageBarTwoCols
class: content-offset
---

# Distribute Items Along the Main Axis

::left::

<div class="mt-6"></div>

```css
.actions {
  display: flex;
  justify-content: flex-start;
}
```

<div class="mt-6"></div>

```css
.actions {
  display: flex;
  justify-content: center;
}
```

<div class="mt-6"></div>

```css
.actions {
  display: flex;
  justify-content: space-between;
}
```

::right::

<div class="mt-4"></div>

<div>
  <img src="/images/flex-justify-start.svg" alt="Demonstration of justify-content: flex-start." class="block mx-auto w-full" style="max-height: 43vh; object-fit: contain;" />
</div>

<div class="mt-4"></div>

<div>
  <img src="/images/flex-justify-center.svg" alt="Demonstration of justify-content: center." class="block mx-auto w-full" style="max-height: 43vh; object-fit: contain;" />
</div>

<div class="mt-4"></div>

<div>
  <img src="/images/flex-justify-space-between.svg" alt="Demonstration justify-content: space-between." class="block mx-auto w-full" style="max-height: 43vh; object-fit: contain;" />
</div>

<style>
.slidev-code {
  font-size: 0.75rem !important;
  line-height: 1.2 !important;
}
</style>

<!--
- Answer 3: let the assigned group show its experiment first.
- `justify-content` distributes remaining free space after flexible sizing and auto margins.
- `flex-end` packs items at the end; `space-around` gives each item equal surrounding space (half-size edge gaps); `space-evenly` gives equal gaps including the edges.
- With one item, `space-between` falls back to start alignment.
-->
