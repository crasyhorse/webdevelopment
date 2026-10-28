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
- Cascade priority is one stage. The enclosed origin/importance, layers, and animations/transitions nodes are aspects of that stage, not separate independent specificity comparisons.
- This flowchart intentionally simplifies the full origin and importance ordering: active transitions have very high precedence, and animations also participate at particular cascade precedence levels.
- Selector specificity is compared only among declarations with the same preceding cascade priority.
- Scoping proximity is relevant to @scope; source order breaks remaining ties.
- Inheritance and the CSS initial value are applied when no directly specified value wins for the element and property.
-->
