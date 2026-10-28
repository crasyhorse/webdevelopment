---
layout: pageBarTwoCols
class: content-offset
---

# Absolute Positioning — Why the Parent Matters

::left::

**Without a positioned parent**

<div>
  <img src="/images/position-anchor-without.svg" alt="The badge is at the top right of the page, outside the task card." class="block mx-auto w-full" style="max-height: 20vh; object-fit: contain;" />
</div>

```css
.badge {
  position: absolute;
  top: .5rem;
  right: .5rem;
}
```
::right::

**With a positioned parent**

<div>
  <img src="/images/position-anchor-with.svg" alt="The same badge is now at the top right of its task card." class="block mx-auto w-full" style="max-height: 20vh; object-fit: contain;" />
</div>

```css
.task-card {
  position: relative;
}

.badge {
  position: absolute;
  top: .5rem;
  right: .5rem;
}
```

::below::
<p style="text-align: center;">The parent establishes the reference. The child specifies the position.</p>

<style>
.slidev-code {
  font-size: 0.75rem !important;
  line-height: 1.2 !important;
}
</style>

<!--
- Assume the badge is nested inside `.task-card` and no other ancestor establishes an absolute-position containing block.
- In the left example, the card has its default `position: static`. The badge is positioned relative to the initial containing block (normally the viewport-sized area at the document origin).
- In the right example, adding `position: relative` to the card establishes the containing block for the badge. The card itself stays in normal flow and does not move without offsets.
- The badge uses exactly the same `position: absolute`, `top` and `right` declarations in both examples.
- The badge is removed from normal flow, so reserve room to avoid covering text.
- Demo: toggle the card's `position: relative` declaration in DevTools and watch the badge change its reference.
- Other properties, such as `transform`, can also establish a containing block.
-->
