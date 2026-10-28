# Exercise 03 — Investigating the cascade and specificity

## Learning objectives

- Calculate selector specificity and distinguish source order from selector weight.
- Diagnose conflicting declarations in DevTools and remove unnecessary rules.
- Practice inherited text colors, `inherit`, `initial`, and `unset`.
- Keep the existing keyboard-focus styles and form validation intact.

## Starting point

`index.html` and `styles.css` are **byte-identical to the Exercise 02 solution**. You should already see colored task items, attribute-selected fields, and a styled Add Task button. This time you will **create and diagnose conflicts**, then remove the temporary experiments so the finished Task Manager works as before.

## Tasks

1. Open `styles.css` and find `.submit-button { color: white; }`. Immediately below it add `button { color: blue; }`. Before opening DevTools, predict which declaration wins, and then inspect the Add Task button.
2. Write down the specificity: `button` = **0-0-1**, `.submit-button` = **0-1-0**. Swap their source order; explain why the class still wins. Remove the temporary `button` rule.
3. Add `.task-main .submit-button { color: #475569; }` at the end of the file. Confirm this deliberately makes the button text less readable. Calculate its weight (**0-2-0**) and identify the crossed-out declaration in DevTools.
4. Without using `!important`, remove the unnecessary override to restore the original readable white text. Explain why deleting a conflicting rule can be preferable to adding another more-specific selector.
5. Create two temporary `button` rules with the same specificity but different colors; reverse their order and confirm that the later normal rule wins *among otherwise equal priorities*. Then remove both rules.
6. Compare `input { border-color: #a65a0b; }` with existing `input[required] { border: 2px solid #317aa6; }`. Add the first rule after the second and inspect both the required text input and optional date input. Record their selector weights. Remove the test rule.
7. Give `.submit-button:hover` a temporary different background color and inspect the hovered state. Compare weights **0-1-0** and **0-2-0**. Restore the original hover rule.
8. The title's `color` is set explicitly, but most paragraph text inherits from `body`. Temporarily set `color: #6b3f9b` on `body` and inspect the introductory paragraph versus the title. Restore the body color after observing the difference.
9. On the introductory paragraph use `color: inherit` temporarily; compare its computed value with `color: initial` and `color: unset` in DevTools. Remember that `color` is inherited and `initial` uses its CSS initial value. Restore the Exercise 02 paragraph style afterward.
10. Briefly add `.task-title + p::first-letter { color: #a65a0b; }` and inspect the first letter. Explain the role of the adjacent-sibling combinator and the pseudo-element. Remove the experimental declaration.
11. Verify that the Add Task button still has a visible focus outline and that the required input still blocks empty submission. The final page should contain **none of the temporary diagnostic overrides**.

## Check your result

- The same Task Manager from Exercise 02 remains intact.
- You can distinguish source order, specificity, pseudo-class states, and inheritance in DevTools.
- All temporary experiments are removed; the final CSS does not rely on `!important`.

## Discuss

1. Why can a later selector still lose?
2. Why does `unset` act like `inherit` for an inherited property such as `color`?
3. Why is deleting an unintended override often better than increasing specificity?

**Reference solution:** `../../solutions/03-cascade-specificity/`.
