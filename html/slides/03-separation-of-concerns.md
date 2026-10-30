---
layout: pageBar
---

# Three technologies, distinct responsibilities

<div class="mt-20"></div>

| **Technology** | **Responsibility** | **Question** |
| --- | --- | --- |
| **HTML** | Structure **and meaning** | What is this content? |
| **CSS** | Presentation | How should it look? |
| **JavaScript** | Behavior | What should happen? |

<img
  src="/images/html-button-rendering.svg"
    class="w-[600px] block mx-auto"
/>

<!--
- Ask which layer is responsible for identifying a Save action: HTML, not a CSS class.
- The native button communicates meaning and also provides built-in interaction behavior.
- CSS can make an element look like a button but does not create button semantics.
- JavaScript can attach behavior, but it should not be needed to define the element’s identity.
- This is a design guideline, not a claim that the three technologies never interact.
- Mention that React ultimately renders HTML elements, so the same separation still matters.
-->
