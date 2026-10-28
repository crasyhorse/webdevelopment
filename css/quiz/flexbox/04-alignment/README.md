# Group 4 — What is the difference between `align-items` and `align-self`?

## Starting point

Three items with different amounts of text in a tall row. Open `index.html` in your browser and edit `styles.css`. No other group’s work is needed.

```html
<div class="actions"><div class="actions__item">Short</div><div class="actions__item actions__item--end">Two<br>lines</div><div class="actions__item">Three<br>lines<br>here</div></div>
```

```css
.actions { display: flex; width: 380px; height: 200px; gap: 8px; }
.actions__item { padding: 10px; }
.actions__item--end { /* Try align-self here. */ }
```

**Context:** The supplied `display: flex` creates a horizontal row by default (`flex-direction: row`). Its main axis is horizontal and its cross axis is vertical in this example. With `flex-direction: column`, the main axis is vertical and the cross axis is horizontal. The item with the base class `actions__item` and modifier `actions__item--end` is the only item you will override.

## Experiments

1. On `.actions`, try `align-items: stretch`, `flex-start`, `center`, `flex-end` and `baseline`.
2. Compare all three items after each change.
3. Set `align-items: center` and try `align-self: flex-end` on `.actions__item--end` only.
4. Change the direction to `column`. Observe which axis the alignment now follows.

## Present your answer

Explain which property sets the default for all items and which overrides it for one item. Explain how the cross axis depends on direction.
