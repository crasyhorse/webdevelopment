---
layout: pageBar
class: content-offset
---

# The Cost of Duplicated Values

<div>
  <img src="/images/tokens-duplication.svg" alt="Stylesheet with the same blue repeated in many declarations on the left, and the same stylesheet consuming one token on the right." class="block mx-auto w-full" style="max-height: 52vh; object-fit: contain;" />
</div>

<!--
- Your Exercise 14 stylesheet repeats the same colors and sizes dozens of times: open it and count the occurrences of the primary color with the editor's search.
- One brand change means dozens of edits — and one missed occurrence is a bug.
- Find-and-replace fixes the color but not the problem: the next value (spacing, radii, font sizes) repeats again.
- Values need names the CSS can reference. Announce the goal of this part: give values names, then change the name's meaning in one place.
-->
