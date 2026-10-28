# Exercise 15 — Accessibility Audit

## Starting point

Use the exact Solution 14 application. Open http://localhost:5500/css/exercises/15-accessibility-audit/index.html. The objective is to identify issues, fix them, and verify the changes. No automated score alone demonstrates conformance. Do not intentionally break existing features to manufacture an audit finding.

## 1. Record a baseline

Run Lighthouse Accessibility in Chrome or Edge DevTools. Record each finding, its affected element, and how you will verify a fix. Test at least a narrow and a wide viewport. No particular initial score is expected. If no automated failures are reported, continue with manual checks.

## 2. Inspect semantics and contrast

Use Elements > Accessibility to inspect names, heading levels and landmarks. Verify labels on all form fields, the attachment alternative text, and the visible priority/completion indicators. Use the color picker to inspect text and required control borders against adjacent colors. Normal text generally needs 4.5:1, large text and required graphical/control information 3:1, subject to WCAG exceptions. If field boundaries are too faint, try `border-color: #526B80` on `.task-form__input` and `.task-form__select`, including the required input rule. Record what you measured; do not assume every presentational border must meet 3:1.

## 3. Test keyboard interaction

Use Tab, Shift+Tab, Enter and Space where appropriate. Check link and button focus on both header and light backgrounds, and ensure all interactive controls remain reachable. Try Accessibility Insights FastPass > Tab stops if available. Improve the focus indicator so it works on both surfaces, for example a dark outline with a white outer separation using `box-shadow`. Check existing specific focus rules so they do not override your new intended style. Avoid positive tabindex.

## 4. Add a bypass link

Add a visible-on-focus skip link as the first focusable element inside `.task-manager`. Link it to the main content using `href="#main-content"` and add the unique ID to the main element. `tabindex="-1"` on the destination permits programmatic/fragment focus without adding an ordinary tab stop. Position the link outside view until focused, then make it visible above the header. Test by pressing Tab immediately after loading, then Enter. Ensure subsequent navigation begins in the main content rather than returning to navigation links.

## 5. Inspect focus obstruction and targets

At wider but short heights, navigate through the dashboard and check whether the sticky header obscures the focused controls or anchor targets. If needed, remove stickiness or provide a solution you can verify thoroughly. The reference solution chooses the simpler static header. Increase small action hit areas; aim for comfortable targets (44px is a useful design goal, not a universal AA threshold). Remove unnecessary internal scrolling from the task list; if you retain it, ensure keyboard users can scroll it. The reference removes the height restriction so an extra tab stop is unnecessary.

## 6. Reflow and text resizing

Test 200% text resizing and reflow at 320 CSS px (or 400% browser zoom from a 1280 CSS px viewport). Check the featured task badge, action group and form controls. If the badge overlaps content, place it in normal flow and allow the featured card to wrap. Temporarily apply the WCAG text-spacing test values: line-height 1.5, paragraph spacing 2em, letter-spacing .12em, word-spacing .16em. Check that no text is hidden and functionality is preserved. Restore temporary test declarations. Keep the responsive dashboard and container-query behavior.

## 7. Verify and document

Repeat the audit and individual manual tests. Record pass/fail/not tested for contrast, keyboard, focus, labels, heading structure, color-independent meaning, target size, zoom, reflow and text spacing. Explain at least one issue that automated testing alone cannot establish. Keep your working changes and compare with the separate reference solution. If the extension is unavailable, use manual keyboard checks and built-in DevTools.

## Resources

- [WCAG 2.2](https://www.w3.org/TR/WCAG22/)
- [W3C Easy Checks](https://www.w3.org/WAI/test-evaluate/preliminary/)
- [Chrome DevTools](https://developer.chrome.com/docs/devtools/accessibility/reference)
- [Accessibility Insights FastPass](https://accessibilityinsights.io/docs/web/getstarted/fastpass/)
