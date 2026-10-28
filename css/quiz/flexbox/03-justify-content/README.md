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

## Experiments

1. Set `justify-content` on `.actions` to `flex-start`, `center`, `flex-end`, `space-between`, `space-around` and `space-evenly`.
2. Sketch where each item is placed and compare the spaces at the edges with spaces between items.
3. Change the container width to 300px and repeat two values.
4. Temporarily switch `flex-direction` to `column`. Add `height: 240px` to the container and retest `justify-content: center`.

## Present your answer

Explain what is distributed and along which axis; show at least three distinct values.
