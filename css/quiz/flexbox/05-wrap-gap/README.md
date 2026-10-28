# Group 5 — What do `flex-wrap` and `gap` do?

## Starting point

Four 128px buttons in a 416px container. Open `index.html` in your browser and edit `styles.css`. No other group’s work is needed.

```html
<div class="actions"><button class="item">1</button><button class="item">2</button><button class="item">3</button><button class="item">4</button></div>
```

```css
.actions { display: flex; width: 416px; /* Try flex-wrap and gap here. */ }
.actions > button { flex: 0 0 128px; height: 42px; }
```

## Experiments

1. The buttons cannot grow or shrink. Observe where the fourth button goes with the initial style.
2. Add `flex-wrap: wrap` to `.actions`. Observe what changes.
3. Add `gap: 12px`, then compare with `gap: 24px`. Count how many buttons fit per line.
4. Resize the container from 416px to 300px. Compare horizontal and vertical gaps. Try `gap: 8px 24px`.

## Present your answer

Explain the default wrapping behavior, what changes with wrapping, and where gap creates space.
