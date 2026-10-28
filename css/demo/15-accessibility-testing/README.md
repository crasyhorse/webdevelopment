# Demo 15 — Accessibility Testing

## Preparation

Open `index.html` and `styles.css` at http://localhost:5500/css/demo/15-accessibility-testing/index.html. This page contains deliberate accessibility failures. Use Chrome or Edge. No test code or framework is required. Optionally install [Accessibility Insights for Web](https://accessibilityinsights.io/docs/web/overview/) before the workshop. Use the browser's built-in tools if extensions are unavailable.

## 1. Establish an automated baseline

Open DevTools, select Lighthouse (possibly under More tabs), select Accessibility and run an audit. Record the reported rules and affected elements, rather than just the score. Expand findings and inspect the corresponding HTML. Exact findings and scores depend on browser version and viewport. Do not claim full WCAG conformance even with a perfect score.

## 2. Inspect actual contrast

Select `.audit__muted` in Elements. Open the text color picker or accessibility contrast information; gray `#AAAAAA` on white is approximately 2.32:1. Normal text generally needs 4.5:1 for AA. Replace it with `#263C55`, which exceeds 4.5:1 against white. Reinspect and rerun the audit. DevTools changes are temporary; transfer the successful change to the stylesheet for persistence. Inspect actual backgrounds and states, not isolated hex values.

## 3. Review semantics and labels

Inspect the accessibility tree for the unnamed input and skipped heading level. Change `<h3>Tasks</h3>` to `<h2>Tasks</h2>` and insert `<label for="task-name">New task</label>` before the input. Inspect the accessible name. CSS cannot supply equivalent semantics simply by making text bold. The label also provides a larger clickable target. Rerun Lighthouse.

## 4. Find color-only meaning

Ask which task is high priority without using hue. Add visible text `(high priority)` and `(low priority)` to the existing paragraphs. Color reinforces the meaning but no longer carries it alone. Automated contrast checks cannot necessarily detect this design issue.

## 5. Keyboard and focus

Reload and use Tab and Shift+Tab without the mouse. Observe the invisible focus and the reversed visual button order. Remove the `outline: none` rule and change `flex-direction: row-reverse` to `row`. Add:

```css
.task-form__input:focus-visible,
.task-form__submit:focus-visible,
.task-form__reset:focus-visible {
  outline: 3px solid #263C55;
  outline-offset: 3px;
}
.task-form__submit, .task-form__reset {
  min-height: 2.75rem;
  padding: .5rem 1rem;
  font: inherit;
}
```

Verify focus visibility, meaningful order and native button activation. A 44px design target is comfortable; WCAG 2.2 AA target size criterion generally uses 24 by 24 CSS pixels with exceptions. See 2.5.8. Do not change tab order with positive `tabindex` just to match CSS order.

## 6. Zoom, reflow and text spacing

At 320 CSS px the fixed 50rem container produces overflow. At a 1280 CSS px starting viewport, 400% browser zoom is a useful reflow test. Also check 200% text resizing. Replace `.audit { width: 50rem; }` with `.audit { width: 100%; max-width: 50rem; }`, allow `.task-form__actions` to wrap, set `.task-form__input { max-width: 100%; }`,  set `.task-form__input { max-width: 100%; }`,  set `.task-form__input { max-width: 100%; }`,  set `.task-form__input { max-width: 100%; }`,  and replace the clipped paragraph's fixed height and hidden overflow with `height: auto; overflow: visible`. Check again. Temporarily set line height to 1.5, paragraph spacing to 2em, letter spacing to .12em and word spacing to .16em on the text elements. Verify that no content or functionality is lost. Restore the temporary test styles. These values are a test under WCAG 1.4.12, not required default styles.

## 7. Guided tab-stop testing

Open Accessibility Insights for Web on the local page, choose FastPass, review Automated checks and perform Tab stops. Follow its guided steps; inspect the numbered focus sequence and record whether each control can be reached and operated in a meaningful order. If the extension is unavailable, perform the same test manually. WAVE and axe DevTools are alternatives for automated inspection.

## 8. Verify and restore

Repeat Lighthouse and the manual checks. Ask which issues remained invisible to the automated report and why. Compare observations before and after remediation. Restore the supplied intentionally faulty `index.html` and `styles.css` after the demonstration so the next group can reproduce the findings.

## References

- [WCAG 2.2](https://www.w3.org/TR/WCAG22/) — 1.4.1, 1.4.3, 1.4.4, 1.4.10–12, 2.4.3, 2.4.7, 2.4.11 and 2.5.8.
- [W3C Easy Checks](https://www.w3.org/WAI/test-evaluate/preliminary/)
- [Chrome DevTools accessibility reference](https://developer.chrome.com/docs/devtools/accessibility/reference)
- [Accessibility Insights FastPass](https://accessibilityinsights.io/docs/web/getstarted/fastpass/)
