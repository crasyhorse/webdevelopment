---
layout: pageBar
class: content-offset
---

# Theming Is a Token Swap

<div>
  <img src="/images/tokens-theme-swap.svg" alt="The same task card in a light and a dark theme; both consume --surface, --text and --accent, but a data-theme selector re-declares the token values." class="block mx-auto w-full" style="max-height: 38vh; object-fit: contain;" />
</div>

<!--
- The payoff slide: everything before was achievable with find-and-replace; a live theme switch is not.
- The attribute selector goes on `<html>` or `<body>` so the whole tree inherits the swapped values; a JS toggle would just flip the attribute.
-->
