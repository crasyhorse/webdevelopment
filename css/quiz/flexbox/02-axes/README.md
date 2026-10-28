# Group 2 — What are the main axis and cross axis, and how does `flex-direction` affect them?

## Starting point

Three numbered items in a roomy container. Open `index.html` in your browser and edit `styles.css`. No other group’s work is needed.

```html
<div class="panel"><div class="item">1</div><div class="item">2</div><div class="item">3</div></div>
```

```css
.panel { display: flex; width: 320px; height: 240px; gap: 8px; /* Try flex-direction here. */ }
.item { width: 52px; height: 52px; }
```

**Context:** `display: flex` makes the direct children flex items. The main axis is the direction in which the items are laid out; the cross axis is perpendicular to it. Assume left-to-right horizontal writing. The direction and orientation of these axes are what you will investigate.

## Experiments

1. Change `flex-direction` on `.panel` to `row`, `column`, `row-reverse` and `column-reverse`, one at a time.
2. Draw an arrow from the start to the end of the main axis for each value. Draw a perpendicular arrow for the cross axis.
3. Compare the visual order with the HTML order.
4. Use DevTools to confirm the direction of both axes.

## Present your answer

Explain all four directions and identify both axes in each case. Do not change the other groups’ files.
