---
layout: pageBarTwoCols
class: content-offset
---

# `rem` vs `em` — What Happens When We Nest?

::left::

**Both use font size as a reference — but which one?**

```css
html { font-size: 16px; }

/* In nested elements: */
.panel { font-size: 1.5em; }
.panel__content { font-size: 1.5em; }
```

`em` compounds: **16 → 24 → 36px**.

```css
.panel { font-size: 1.5rem; }
.panel__content { font-size: 1.5rem; }
```

`rem` stays root-relative: **24px** at both levels.

::right::

<div>
  <img
    src="/images/units-rem-em.svg"
    class="block mx-auto w-full"
    style="max-height: 53vh; object-fit: contain;"
    alt="Nested em text grows from root 16px to parent 24px to child 36px; using rem both parent and child are 24px relative to the 16px root."
  />
</div>

<!--
- Assume the root is explicitly `16px` for this calculation; real browser/user
  settings may differ. The parent is a direct child of the root, and the child
  is nested inside that parent.
- `em` example: `1.5 × 16px = 24px` for the parent; `1.5 × 24px = 36px`
  for the nested child. The multipliers compound at every nesting level.
- `rem` example: both parent and child use `1.5 × 16px = 24px` regardless of nesting.
- Important nuance: `em` is not universally parent-relative. For `font-size` it
  uses the parent's computed font size, but for `padding` it uses the element's
  own computed font size. For instance, `padding: 1em` on the `36px` child is `36px`.
- This demonstrates a common pitfall, not a claim that `em` should never be used.
- MDN: https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Values_and_units
-->
