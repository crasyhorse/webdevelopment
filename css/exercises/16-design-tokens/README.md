# Exercise 16 — Design Tokens

## Starting situation

You are continuing from Exercise 15. The Task Manager is accessible, responsive and visually designed — and your `styles.css` proves how you got there: more than 200 lines with the same colors written over and over. Search for `#263C55` and count the hits.

## Learning objectives

- Extract repeated values into raw and semantic custom properties.
- Re-scope a token for a single component variant.
- Build a dark theme by re-declaring the token set.
- Verify contrast in **both** themes.

## Tasks

1. **Raw tokens.** Create a `:root` block at the top of `styles.css`. Move every color that appears more than once into raw tokens named after the palette, e.g. `--color-slate-900: #263C55;`, `--color-slate-50: #FAFBFC;`. Replace the literals with `var(…)`. The rendering must not change.
2. **Semantic tokens.** Add a second group that names *roles*: `--page-bg`, `--surface`, `--text`, `--text-muted`, `--accent`, `--accent-hover`, `--status-high-bg`, `--status-done-bg`, … Each points at a raw token. Components use only semantic tokens.
3. **Scope one token.** Give the high-priority task items their own accent by re-declaring one token on the modifier block instead of repeating declarations:

   ```css
   .task-list__item--high-priority {
     --item-bg: var(--status-high-bg);
   }
   ```

4. **Dark theme.** Re-declare the semantic tokens under a `[data-theme="dark"]` selector:

   ```css
   [data-theme="dark"] {
     /* same token names, dark values */
   }
   ```

   Add `data-theme="dark"` to the `<html>` element to test it.
5. **Verify.** In both themes: check text contrast with the DevTools color picker (4.5:1 normal text), tab through the page and confirm the focus ring stays visible, and resize to the Part VI breakpoints.

## Experiments to try

- Change only `--color-slate-900`. What happens across the page — and is that the behavior you want from a *raw* token?
- Declare `--surface: #ECF0DC` on `.task-form` only. Which parts of the form change, and why?
- Delete one token declaration. Which fallback behavior from the slides applies?

## Verification

Compare against the reference solution: [solutions/16-design-tokens](../../solutions/16-design-tokens/styles.css). The page must look identical to Exercise 15 in the light theme; the dark theme is the new feature.

## Reset

Restore `styles.css` from the exercise folder (or `git checkout -- .`) before comparing with the solution.
