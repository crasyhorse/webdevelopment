# Exercise 03 — Instructor guidance and expected observations

Do not present the results before learners attempt the investigations. Encourage them to predict, inspect the Styles panel, then explain the evidence.

## 1. Class versus type

- `button` has specificity **0-0-1**; `.submit-button` has **0-1-0**.
- For normal author declarations in the same cascade layer, the class wins regardless of source order, assuming no higher-priority competing rule. Students should temporarily disable the starter's more-specific conflict to isolate these two rules.

## 2. Attribute selector

- `input` is **0-0-1**; `input[required]` is **0-1-1**. The attribute is counted in the class-like column; the type is counted in the type-like column.
- The required name field matches both; the optional date field doesn't match the attribute selector.
- If necessary set `border: 2px solid` beforehand so the border-color change is visually apparent.

## 3. Pseudo-class

- `.submit-button` is **0-1-0**; `.submit-button:hover` is **0-2-0**.
- While hovered, the pseudo-class rule has the higher selector weight. Without hover it does not match, so the base rule applies.
- Keep a visible `:focus-visible` indicator. Both mouse and keyboard interactions matter.

## 4. Pseudo-element

- `p::first-letter` has **0-0-2** (one type plus one pseudo-element).
- `.task-title + p::first-letter` has **0-1-2** (one class, one type, one pseudo-element); the `+` combinator contributes no specificity.
- The paragraph immediately following the title matches both; the more specific selector wins despite appearing first, assuming equal prior cascade priority.
- `::first-letter` affects the first typographic letter, rather than making a new HTML element.

## 5. Existing Task Manager conflict

- Starter `.submit-button { color: white; }` is **0-1-0**.
- Starter `.task-main .submit-button { color: #475569; }` is **0-2-0** and wins for the button; later source order reinforces it but is not the deciding factor.
- A clean solution is to remove the unnecessary conflicting rule. The provided reference CSS instead deliberately uses the same 0-2-0 selector with a later `color: white` declaration to demonstrate a source-order tie-breaker; discuss that removing redundant rules can be preferable.
- For rules of identical cascade priority and specificity, later source order wins. An important author declaration outranks normal author declarations, even if those are more specific; don't use `!important` as a routine workaround.

### Facilitator notes

- The existing starter conflict can obscure investigations 1–3. Ask students to disable it temporarily in DevTools, or work in a clearly marked experiment section after commenting out the competing rule. Restore the starter before Task 5.
- Start each investigation with prediction, then inspect computed values and crossed-out rules.
- This is a hands-on exercise: do **not** provide the former four multiple-choice questions as tasks.
