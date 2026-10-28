---
layout: pageBar
class: content-offset
---

# Custom Properties Inherit

<div>
  <img src="/images/tokens-inheritance.svg" alt="Element tree where the root declares --accent and all elements inherit it; one card re-declares the token so only its subtree uses the new value." class="block mx-auto w-full" style="max-height: 38vh; object-fit: contain;" />
</div>

<!--
- Like text properties, custom properties pass down the tree; `:root` matches `<html>`, the ancestor of everything.
- A re-declaration on any element re-scopes the value for its subtree only — the other cards keep the inherited value.
- `var()` always resolves against the value computed at the using element, never at the place where the token was first declared.
- This is the mechanism behind everything that follows: scoping, component overrides, theming.
- Contrast with normal properties: `color` also inherits, but you cannot re-target "just the descendants that use it" — custom properties decouple the value from the property.
- Prediction: two cards share `var(--accent)`; declare `--accent` on the second card only. Which borders change? Then declare it on a grandchild element and re-check.
- DevTools: select a nested element, Computed tab, filter for `--accent` to watch the inherited vs. re-declared value.
-->
