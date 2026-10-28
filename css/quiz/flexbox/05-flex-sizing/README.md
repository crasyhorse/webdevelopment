# Group 5 — How do `flex-grow`, `flex-shrink` and `flex-basis` affect item sizes?

## Starting point

Two flex items with a measurable starting size. Open `index.html` in your browser and edit `styles.css`. No other group’s work is needed.

```html
<div class="row"><div class="row__item row__item--a">A</div><div class="row__item row__item--b">B</div></div>
```

```css
.row { display: flex; width: 400px; }
.row__item { min-width: 0; height: 48px; flex-basis: 100px; flex-grow: 0; flex-shrink: 1; }
.row__item--a { /* Experiment with item A. */ }
.row__item--b { /* Experiment with item B. */ }
```

**Context:** `display: flex` creates a horizontal row by default. The direct children are flex items. There is no gap between them. The supplied `box-sizing: border-box` and `min-width: 0` make their measured widths comparable to their flex sizes. All three flex properties can be changed independently; no wrapping or alignment experiment is required.

## Experiments

1. Set both items to `flex-basis: 100px`, `flex-grow: 0`, `flex-shrink: 1`. Inspect their computed widths.
2. Set `flex-grow: 1` on both items, then `flex-grow: 2` on item B. Compare how the extra space is distributed.
3. Set both grow factors to 0 and change the container width to 150px. Compare `flex-shrink: 1` on both with `flex-shrink: 0` on A and `flex-shrink: 1` on B.
4. Restore the container width to 400px, set both grow factors to 0 and both shrink factors to 1. Change B’s basis to 160px and observe its starting size.
5. Remove the individual A/B overrides and set `flex: 1 1 100px` on both items. Measure both widths with a 300px container and then with a 140px container. Explain the respective 50px growth and 30px reduction per item.

## Present your answer

Explain the role of each property and the order of the three values in the shorthand. Report one measured width for each experiment.
