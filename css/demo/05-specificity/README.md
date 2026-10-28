# Demo 05 — Specificity

Open `index.html` through a local HTTP server, inspect `styles.css`, and experiment with one declaration at a time.

1. Compare type selector `button` with class selector `.submit-button`.
2. Inspect computed color and crossed-out declarations in DevTools.
3. Reorder rules and confirm source order does not override greater specificity in otherwise equivalent declarations.
4. Use the 0-0-1 and 0-1-0 specificity weights to explain the result.

The form in this demo has a `task-form` class, so `.task-form .submit-button` genuinely matches the submit button.
