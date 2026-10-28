---
layout: pageBarTwoCols
class: content-offset
---

# Flexbox — One-Dimensional Layout

::left::

- Flexbox arranges items along one main axis.
- The parent becomes a flex container; its direct children become flex items.
- Useful for navigation, toolbars and action groups.

::right::

<div>
  <img src="/images/flex-intro.svg" alt="Three blocks in normal flow compared with the same blocks in a flex row." class="block mx-auto w-full" style="max-height: 35vh; object-fit: contain;" />
</div>

<!--
- Answer 1: compare normal block flow and `display: flex` using the same HTML.
- Descendants beyond the direct children are not automatically flex items.
- Flexbox can wrap into lines, but each line is laid out independently.
-->
