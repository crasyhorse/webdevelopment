# Group 6 — How do `flex-grow`, `flex-shrink` and `flex-basis` affect item sizes?

## Starting point

Two flex items with a measurable starting size. Open `index.html` in your browser and edit `styles.css`. No other group’s work is needed.

```html
<div class="row"><div class="item a">A</div><div class="item b">B</div></div>
```

```css
.row { display: flex; width: 400px; }
.item { min-width: 0; height: 48px; flex-basis: 100px; flex-grow: 0; flex-shrink: 1; }
.a { /* Experiment with item A. */ }
.b { /* Experiment with item B. */ }
```

## Experiments

1. Set both items to `flex-basis: 100px`, `flex-grow: 0`, `flex-shrink: 1`. Inspect their computed widths.
2. Set `flex-grow: 1` on both items, then `flex-grow: 2` on item B. Compare how the extra space is distributed.
3. Set both grow factors to 0 and change the container width to 150px. Compare `flex-shrink: 1` on both with `flex-shrink: 0` on A and `flex-shrink: 1` on B.
4. Restore the container width to 400px. Change B’s basis to 160px. Observe its starting size. Try the shorthand `flex: 1 1 100px` on both items.

## Present your answer

Explain the role of each property and the order of the three values in the shorthand. Report one measured width for each experiment.
