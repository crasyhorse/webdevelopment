# Group 4 — What is the difference between `align-items` and `align-self`?

## Starting point

Three items with different amounts of text in a tall row. Open `index.html` in your browser and edit `styles.css`. No other group’s work is needed.

```html
<div class="actions"><div class="item">Short</div><div class="item special">Two<br>lines</div><div class="item">Three<br>lines<br>here</div></div>
```

```css
.actions { display: flex; width: 380px; height: 200px; gap: 8px; }
.item { padding: 10px; }
.special { /* Try align-self here. */ }
```

## Experiments

1. On `.actions`, try `align-items: stretch`, `flex-start`, `center`, `flex-end` and `baseline`.
2. Compare all three items after each change.
3. Set `align-items: center` and try `align-self: flex-end` on `.special` only.
4. Change the direction to `column`. Observe which axis the alignment now follows.

## Present your answer

Explain which property sets the default for all items and which overrides it for one item. Explain how the cross axis depends on direction.
