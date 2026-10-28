# Group 3 — What does `justify-content` control?

## Starting point

A row with unused horizontal space. Open `index.html` in your browser and edit `styles.css`. No other group’s work is needed.

```html
<div class="actions"><div class="item">1</div><div class="item">2</div><div class="item">3</div></div>
```

```css
.actions { display: flex; width: 480px; /* Try justify-content here. */ }
.item { flex: 0 0 64px; min-height: 44px; }
```

**Context:** `display: flex` makes the direct children flex items. The default direction, `row`, lays them out horizontally in this left-to-right example; `column` lays them out vertically. The main axis follows this direction. The supplied `flex: 0 0 64px` keeps each item at a 64px main-axis size (no growth or shrinkage), so unused main-axis space remains available. You do not need to derive this sizing rule.

## Experiments

1. Set `justify-content` on `.actions` to `flex-start`, `center`, `flex-end`, `space-between`, `space-around` and `space-evenly`.
2. Sketch where each item is placed and compare the spaces at the edges with spaces between items.
3. Change the container width to 300px and repeat two values.
4. Temporarily switch `flex-direction` to `column`. Add `height: 240px` to the container and retest `justify-content: center`.

## Present your answer

Explain what is distributed and along which axis; show at least three distinct values.
