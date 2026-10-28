# Demo 17 — Cascade Layers

## The concept and the problem

Part II taught the cascade: origin → specificity → source order. Real projects add a fourth, social dimension: *who wrote this rule and when*. The result is the specificity spiral — every new rule needs a stronger selector than the last, until only `!important` wins.

`@layer` gives the cascade an explicit, human-readable order. Layer order beats specificity: a plain class rule in a later layer defeats an ID rule in an earlier one. This demo reproduces the spiral on a small scale and resolves it with layers instead of selector muscle.

## Learning objectives

- Predict which rule wins when specificity and layer order disagree.
- Convert an unlayered stylesheet into ordered layers without changing the rendering.
- Explain why unlayered styles beat layered ones, and how `!important` flips layer order.

## Files and starting state

Open `index.html` and `styles.css` (serve the repository root at `http://localhost:5500/`, then visit `http://localhost:5500/css/demo/17-cascade-layers/index.html`).

The page shows a Task Manager fragment with two deliberate conflicts in `styles.css`:

1. `.panel__title` (brand blue) vs. `#special-heading` (ocher) on the same `<h2>` — the ID wins today.
2. `.task-list__item--highlight` needs `color: #8C7428 !important` to beat the base `.task-list__item` color — the classic escalation.

Nothing is layered yet. Keep DevTools open on the **Styles pane** for the whole demo.

## Experiment 1 — Diagnose the spiral

**Change:** none. Select the "Weekly report" heading with DevTools.

**Predict first:** which color wins, and why?

**Observe:** `#special-heading` wins; `.panel__title` is struck through. The Styles pane shows the specificity — the ID is the reason.

**Explain:** the ID selector was almost certainly added because an earlier author *lost* a cascade fight. The selector documents a battle, not the design.

## Experiment 2 — Introduce the layer order

**Change:** at the very top of `styles.css` add:

```css
@layer reset, base, components, utilities;
```

Then wrap the existing rules: `body`, `.task-manager*`, `.task-list` and `.task-list__item` into `@layer base { … }`; `.panel__title`, `#special-heading` and the highlight modifier into `@layer components { … }`. Remove `!important` from `.task-list__item--highlight`.

**Predict first:** does the heading color change? Does the highlighted item keep its color without `!important`?

**Observe:** inside one layer the normal cascade still applies — `#special-heading` still beats `.panel__title` (both are in `components`). The highlighted item now wins over `.task-list__item` by source order *within* the layer, no `!important` needed.

**Explain:** layers add a precedence tier *above* specificity. Rules in the same layer fight normally; rules in different layers fight by layer order only.

## Experiment 3 — Move the theme rule to an earlier layer

**Change:** move the `#special-heading` rule from `@layer components` into `@layer base`.

**Predict first:** the ID has higher specificity than `.panel__title` — does it still win?

**Observe:** `.panel__title` (components) now wins, **despite** the ID. Layer order beat specificity.

**Explain:** this is the escape hatch from the spiral: old, aggressive selectors move to early layers; new component styles stay flat and simple in later layers.

## Experiment 4 — The unlayered trump card

**Change:** at the end of the file, outside any layer, add:

```css
.panel__title { color: #6C7D2C; }
```

**Predict first:** components is the last declared layer — can anything still beat it?

**Observe:** the unlayered rule wins immediately.

**Explain:** unlayered styles beat **all** layered styles. That's why frameworks should be layered (wrap third-party CSS in `@layer vendor { … }`) — and why your own "quick fix" outside a layer silently outranks the whole architecture.

## Experiment 5 — `!important` flips the table

**Change:** delete the unlayered rule from Experiment 4. Add `!important` to the `base`-layer heading rule (`#special-heading { color: #9A6A2C !important; }`).

**Predict first:** components is later than base — who wins now?

**Observe:** the **base** rule wins. For `!important` declarations, the layer order is reversed.

**Explain:** `!important` was designed as an escape hatch from author styles; combined with layers it reverses precedence. Useful for user stylesheets, a smell inside application code.

## Discussion questions

- Which layers does your Task Manager need? (Common answer: `reset, tokens, base, components, utilities`.)
- Where do Part VIII's `:root` tokens belong — and does it matter that custom properties inherit?
- What happens to third-party CSS you cannot edit? (Wrap the `@import` in `@layer vendor;`.)

## Reset

Close `styles.css` without saving, or remove the `@layer` blocks and restore `!important` on `.task-list__item--highlight`. The starting state is the version committed in the repository.
