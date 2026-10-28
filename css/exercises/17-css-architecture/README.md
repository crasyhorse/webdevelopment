# Exercise 17 — CSS Architecture

## Starting situation

You are continuing from Exercise 16. The Task Manager is fully tokenized — but `styles.css` is still one file of 250+ lines, grown by seventeen exercises of appending. The token block at the top hints at a structure; this exercise makes the whole file follow it.

## Learning objectives

- Organize a stylesheet by BEM block instead of by history.
- Control the cascade with `@layer` instead of specificity and `!important`.
- Refactor without changing the rendering.

## Tasks

1. **Split the files.** Create a `css/` folder next to `styles.css` with `tokens.css`, `base.css` and one file per block (`task-manager.css`, `task-list.css`, `task-form.css`, `task-summary.css`). Move every rule to exactly one file. `styles.css` becomes the entry point:

   ```css
   @layer reset, tokens, base, components;
   @import url("css/tokens.css");
   @import url("css/base.css");
   @import url("css/task-manager.css");
   ```

   (Remember: `@import` must come before all other rules — the `@layer` order line is the one thing allowed above it.)
2. **Assign layers.** Wrap the reset rules (`box-sizing`, `body { margin: 0 }`) in `@layer reset`, the token blocks in `@layer tokens`, element-level styling in `@layer base`, and all block/component rules in `@layer components`.
3. **Remove the escalation.** Find the rules that only win because of source order or high specificity (e.g. the repeated `.task-manager` width overrides). Move the "final word" rules to a later position **within their layer** or into a later layer, and delete the now-redundant duplicates.
4. **Verify pixel equality.** Screenshot the page before and after at three viewport widths (mobile, tablet, desktop) and compare. Toggle `data-theme="dark"` — both themes must be unchanged.

## Experiments to try

- Swap the layer order to `@layer components, base, tokens, reset` — what breaks first, and why?
- Move one component rule outside its layer. Which rules can no longer override it?
- Nest the `.task-list__item` hover state with `&:hover` inside the block file and check the resolved selector in DevTools.

## Verification

Compare with the reference solution: [solutions/17-css-architecture](../../solutions/17-css-architecture/styles.css). The rendering must be identical; the file layout and layer structure are the new quality.

## Reset

Restore the exercise folder from git (`git checkout -- css/exercises/17-css-architecture`) to start again.
