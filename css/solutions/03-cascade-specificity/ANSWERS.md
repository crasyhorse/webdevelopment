# Exercise 03 — Instructor answer key

In this exercise, learners begin with **the unchanged Exercise 02 solution**. No conflicting selector is preloaded; they add and remove conflicts deliberately.

1. `button` = **0-0-1**; `.submit-button` = **0-1-0**. In normal author rules with equal origin/layer/importance, the class selector wins regardless of source order.
2. `.task-main .submit-button` = **0-2-0**, so its text-color override beats `.submit-button` = **0-1-0** while both match. The best final fix is to **remove this unnecessary override**, not fight it with `!important`.
3. Two `button` rules with otherwise equal cascade priority and weight are decided by source order; the later one wins.
4. `input` = **0-0-1**; `input[required]` = **0-1-1**; attribute selectors count toward the middle column. The optional date field does not match `[required]`.
5. `.submit-button:hover` = **0-2-0**; the hover pseudo-class changes which rule matches during pointer interaction.
6. A text color normally inherits from the nearest specified ancestor. For the inherited `color` property, `inherit` and `unset` resolve to the parent's computed value; `initial` uses the property's CSS initial color.
7. `.task-title + p::first-letter` = **0-1-2**: one class, one type selector and one pseudo-element; the `+` combinator adds no specificity.
8. Final result has **no** diagnostic declarations remaining. Both form validation and the original `:focus-visible` indicator still work.

**Teaching boundary:** This is hands-on troubleshooting. Demo 04 explains source order and cascade priority; Demo 05 computes selector weights. Exercise 03 asks students to apply both and inspect inheritance in the persistent Task Manager.
