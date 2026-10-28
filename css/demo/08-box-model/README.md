# Demo 08 — Box Model, Float, and Overflow

Open `index.html` in your browser. No build step is needed.

## Walkthrough

1. Inspect `.task-card` in DevTools. Read its content, padding, border, and margin measurements.
2. The declared width is `360px` with `20px` horizontal padding and `4px` borders. Compare rendered border-box widths with `border-box` unchecked (**408px**) and checked (**360px**).
3. Toggle **Float the icon** and observe text wrapping. Toggle **Contain float with flow-root** to inspect the block formatting context.
4. Enable **Force a fixed card height**, then **Add long content**. Observe overflow. Disable fixed height and notice natural growth.
5. Enable **Scroll the task list** and inspect `max-height` and `overflow-y: auto`.
6. Increase browser zoom or resize the window. Discuss which constraints are robust.

Floats are presented for text wrapping only; Flexbox and Grid come in the following parts.
