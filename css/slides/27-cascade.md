---
layout: pageBar
class: content-offset
---

# How the Cascade Works

<div>
    <img
      src="/images/cascade-flow.svg"
      alt="Cascade flowchart: collect declarations for one property and element; evaluate cascade priority including origin, importance, layers, animations and transitions grouped in one box; compare specificity; resolve ties by scoping proximity then source order; find the winning declaration."
      class="w-full mx-auto block" style="max-height: 39vh; object-fit: contain;"
    />
</div>

<p style="text-align:center"><strong>No specified value? Inheritance or initial values provide the fallback.</strong></p>

<!--
- This flowchart intentionally simplifies the full origin and importance ordering.
- Selector specificity is compared only among declarations with the same preceding cascade priority.
- Scoping proximity is evaluated before source order when scoped rules compete; source order breaks the final tie.
-->
