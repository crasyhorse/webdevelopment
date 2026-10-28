# Demo 06 — inherit, initial, unset

Open `index.html` using the local server and inspect the inherited and non-inherited property values using DevTools.

1. Compare `color: inherit` with `color: initial` and `color: unset`.
2. For an inherited property such as `color`, `unset` behaves like `inherit`.
3. For a non-inherited property such as `padding`, `unset` behaves like `initial`.
4. The CSS-defined initial value is not the same concept as a browser's user-agent stylesheet default.

The demo row explicitly inherits the parent card's 24px padding, so the child example using `padding: inherit` copies 24px from its immediate parent.
