---
layout: pageBar
class: content-offset
---

# The Specificity Spiral

<div>
  <img src="/images/specificity-spiral.svg" alt="A spiral of selectors climbing from a single class to ID plus !important, each step added to beat the previous rule." class="block mx-auto w-full" style="max-height: 42vh; object-fit: contain;" />
</div>

<!--
- Tell the story with their own stylesheet history: a rule won by source order, a later rule needed a stronger selector, and so on up the spiral.
- Each rung exists only to beat the previous rule — the selector no longer describes the component, it describes a fight.
- The end of the spiral: `!important` beats everything, so the next fix needs `!important` too; eventually nothing can be overridden without editing the original rule.
- Prediction: after `#app .task-list .task-list__item { … !important }`, what does a new component's simple `.task-list__item` rule do? Nothing.
- Way out: keep specificity flat (BEM, slide 153) and control order explicitly — which is exactly what @layer does next.
- DevTools: the Styles pane shows the winning selector struck through; count the rungs of the spiral in the real file.
-->
