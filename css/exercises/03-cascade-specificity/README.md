# Exercise 03 — Investigate the Cascade & Specificity

**Starting point:** The completed Exercise 02 Task Manager with the provided `styles.css` starter. Keep the semantic HTML, existing descriptive classes, and accessible focus styles. Use browser DevTools throughout.

**Before investigations 1–4:** temporarily disable the existing higher-specificity button color rule (`.task-main .submit-button { color: #475569; }`). Restore it for investigation 5 so the deliberate conflict is still available.

## 1. Explore a class selector versus a type selector

1. Locate the **Add Task** button and its `.submit-button` class.
2. Write a `button` rule setting its text color to blue, and a `.submit-button` rule setting it to green. Place the type rule **after** the class rule.
3. Predict and observe the final color. Record each selector's `ID-CLASS-TYPE` weight and identify which cascade stage decides the result.
4. Swap source order. Does it change the winner? Explain why.

## 2. Investigate attribute-selector specificity

1. Find the required task-name input, which already has a `required` HTML attribute.
2. Add `input { border-color: ...; }` and `input[required] { border-color: ...; }` with contrasting colors. Set `border-style` and `border-width` as necessary so the color is visible.
3. Calculate both weights, inspect the matching declarations in DevTools and explain why the required input differs from the optional date field.
4. Reverse the rule order and inspect again. What do you learn about attribute selectors?

## 3. Experiment with pseudo-class specificity

1. Find the existing `.submit-button:hover` rule. Compare its specificity with `.submit-button`.
2. Temporarily give each rule a different `background-color`, putting the base rule later in the stylesheet.
3. Hover the button. Predict and observe which rule wins while hovered; then move the pointer away.
4. Explain how the `:hover` pseudo-class contributes to specificity. Verify that `:focus-visible` remains visible for keyboard users.

## 4. Explore pseudo-element specificity

1. Add `p::first-letter { color: ...; }` to style the initial letter of the paragraph below the main **Task Manager** heading.
2. Calculate the selector's weight. In DevTools, inspect the paragraph and the `::first-letter` pseudo-element.
3. Add `.task-title + p::first-letter { color: ...; }` with a different color **before** the first rule.
4. Compare both weights and explain why one wins for the paragraph's first letter. Remove the exploratory rules when finished.

## 5. Diagnose the existing conflict

- Inspect the two declarations targeting `.submit-button` in the starter. Identify the applied and crossed-out declarations.
- Fix the unintended override without `!important`; make the smallest maintainable change you can explain.
- Add two rules of **equal specificity** and different values to observe the effect of source order.
- Temporarily add `!important`, observe the result, then remove it. Explain why it is usually not the right fix.

## Reflection

Explain in your own words why **matching**, **cascade priority**, **specificity**, and **source order** are separate considerations. Be ready to demonstrate one example in DevTools.

**Reference solution and instructor guidance:** `../../solutions/03-cascade-specificity/` and `../../solutions/03-cascade-specificity/ANSWERS.md`.
