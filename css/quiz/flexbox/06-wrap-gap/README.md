# Group 6 — What do `flex-wrap` and `gap` do?

## Starting point

Four 128px buttons in a 416px container. Open `index.html` in your browser and edit `styles.css`. No other group’s work is needed.

```html
<div class="actions"><button class="actions__button">1</button><button class="actions__button">2</button><button class="actions__button">3</button><button class="actions__button">4</button></div>
```

```css
.actions { display: flex; width: 416px; /* Try flex-wrap and gap here. */ }
.actions__button { flex: 0 0 128px; height: 42px; }
```

**Context:** `display: flex` arranges the direct children in a horizontal row by default. The supplied `flex: 0 0 128px` means that each button starts at 128px and has both growth and shrinkage disabled. It is deliberately supplied so the button widths remain constant during this investigation; no knowledge of Group 5’s results is needed. `box-sizing: border-box` includes the button border and padding in the specified size.

## Experiments

1. The buttons cannot grow or shrink. Observe where the fourth button goes with the initial style.
2. Add `flex-wrap: wrap` to `.actions`. Observe what changes.
3. Add `gap: 12px`, then compare with `gap: 24px`. Count how many buttons fit per line.
4. At 416px, set `gap: 12px` and compare `flex-wrap: wrap` with `flex-wrap: nowrap`. Predict the width required by all four buttons and measure it.
5. Return to `wrap` and resize the container from 416px to 300px. Compare horizontal and vertical gaps. Try `gap: 8px 24px`.

## Present your answer

Explain the default wrapping behavior, what changes with wrapping, and where gap creates space.
