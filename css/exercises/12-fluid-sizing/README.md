# Exercise 12 — Fluid Task Manager

## Starting point

Continue with the exact reference solution of Exercise 11. The dashboard already switches layouts at content-driven breakpoints. Inspect the current computed title size, application padding, attachment width and task action group. This exercise improves sizes between breakpoints rather than adding more breakpoint rules.

## Tasks

1. **Constrain the application.** Use `min()` to select the smaller of `94%` of the containing width and `76rem`. Make sure the effective rule comes after the older width declarations. Verify that the application stops growing on very wide screens.
2. **Create fluid typography.** Replace the effective title font size with `clamp(1.5rem, 1rem + 2vw, 2.5rem)`. Predict the minimum and maximum at a 16px root size; inspect computed values at 360px, 800px and 1600px. Increase browser zoom and default text size. Verify the title can still grow and wrap.
3. **Scale spacing.** Use a bounded padding and gap formula with minimum `.75rem`, preferred `.5rem + 1vw`, and maximum `1.5rem`. Use `max()` to set a form padding floor of `.75rem` without requiring a breakpoint. Inspect the box model at small and large widths; do not let padding consume most of the form's useful space.
4. **Make the attachment and actions robust.** Limit the attachment width to the smaller of `100%` and `34rem`. Keep the responsive image rule. For a practical Grid experiment, change `.task-list__actions` from Flexbox to Grid and let it choose its columns:

   ```css
   grid-template-columns: repeat(auto-fit, minmax(min(100%, 8rem), 1fr));
   ```

   Compare with a fixed `8rem` minimum at very narrow widths. Keep the safer minimum and ensure that buttons can shrink (`min-width: 0`). Explain why this particular action group can adapt without a media query.
5. **Test robustness.** Verify 320px, 768px and 1280px, then zoom to 200%. Temporarily insert a long unbroken task description and a translated heading. Check the form inputs, select and the attachment. Set zero minimum widths on form controls where necessary. Restore temporary text. Verify keyboard access and native form labels.

## Reference solution

See `../../solutions/12-fluid-sizing/`. The HTML and attachment remain unchanged; the solution adds a focused CSS section. Compare computed sizes rather than merely comparing source code.
