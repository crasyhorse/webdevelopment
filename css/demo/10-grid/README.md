# Demo 10 — Grid

## Learning objectives

- Identify grid lines, tracks, cells and gaps in DevTools.
- Use `repeat()` and `minmax()` to define tracks and compare `auto-fit` with `auto-fill`.
- Place and span items using `grid-column` and `grid-row`.
- Express a dashboard layout with named grid areas and change its structure without changing the HTML.

## Starting point

Open `http://localhost:5500/css/demo/10-grid/index.html` (or open the local HTML file). Open `index.html` and `styles.css` in the editor and open browser DevTools. Use a wide browser window initially. Save and reload after each change, or use DevTools for temporary experiments.

The page contains two independent grids. The card grid isolates track sizing; the dashboard demonstrates placement. Neither uses explicit item placement initially.

```html
<div class="cards">
  <article class="card">Task A</article>
  <article class="card">Task B</article>
  <article class="card">Task C</article>
</div>

<div class="dashboard">
  <header>Header</header>
  <aside>Sidebar</aside>
  <main>Tasks</main>
  <footer>Statistics</footer>
</div>
```

The initial layout rules are:

```css
.cards {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  gap: 1rem;
}

.dashboard {
  display: grid;
  grid-template-columns: 1fr 2fr 1fr;
  gap: 1rem;
}
```

The remaining rules control the appearance of the page and items. Keep them unchanged. Each experiment replaces only the declarations indicated unless otherwise stated.

## 1. Inspect the grid structure

Select `.cards` in DevTools and enable the Grid overlay (the grid badge next to the element or the Layout panel). Enable line numbers and track sizes if available.

- Locate the three column tracks and four column lines. A track lies between two adjacent lines; a cell lies at the intersection of a row and a column.
- Identify the two `1rem` column gaps. Fractional tracks share the space left after gaps have been accounted for.
- Resize the browser and observe the track sizes. Compare the equal card tracks with the dashboard's `1fr 2fr 1fr` tracks. With sufficient space, the middle dashboard track is twice as wide as either outer track.
- Inspect the dashboard: three items occupy its first row; the fourth starts a second row. There is no explicit row template, so Grid creates implicit rows sized automatically.

Ask: Why are there four column lines but only three column tracks? Why does Statistics begin a second row?

## 2. Avoid repeating track declarations with `repeat()`

Replace the column declaration in `.cards`:

```css
.cards {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1rem;
}
```

Predict the result before saving. The appearance is unchanged: `repeat(3, 1fr)` expands to three `1fr` tracks. Change the count to `2` and observe how the third card moves to an implicit second row. Restore the count to `3`.

## 3. Control track minimums and maximums with `minmax()`

A plain `1fr` track has an automatic minimum that can be influenced by its contents. Replace the column declaration with:

```css
grid-template-columns: repeat(3, minmax(0, 1fr));
```

The tracks can now shrink below their content-based minimum. The maximum `1fr` lets each track share available space. With the short labels and a wide window, the layout looks unchanged.

To make the difference visible, temporarily replace `Task A` with `VeryLongUnbreakableTaskIdentifier123456789` in `index.html`. At a moderate browser width, compare `repeat(3, 1fr)` and `repeat(3, minmax(0, 1fr))` using the overlay. With the automatic minimum, the first track may grow to accommodate the long word. With a zero minimum, the tracks can remain equal, but the text may overflow its card. Temporarily add `overflow-wrap: anywhere` to `.card` and observe how wrapping helps. Track sizing and text overflow are separate issues.

Restore `Task A` and remove the temporary wrapping rule. Next try:

```css
grid-template-columns: repeat(3, minmax(14rem, 1fr));
```

Each of the three tracks now has a minimum of `14rem`. Narrow the window: once the container is smaller than the sum of the three minimums and two gaps, the grid overflows rather than reducing the number of columns. A fixed repeat count does not make the number of tracks responsive.

## 4. Let Grid determine how many tracks fit

Replace the previous declaration:

```css
grid-template-columns: repeat(auto-fit, minmax(14rem, 1fr));
```

Resize the window. Grid creates as many columns as fit; cards wrap into additional rows when fewer columns fit. At a wide width where at least four tracks could fit, only the three occupied tracks remain expanded because `auto-fit` collapses empty repeated tracks and their adjacent gaps.

Now change `auto-fit` to `auto-fill`:

```css
grid-template-columns: repeat(auto-fill, minmax(14rem, 1fr));
```

Use a sufficiently wide window (with the default 16px root font size, about 1100px or more). The three cards occupy the first three tracks, but additional empty tracks retain space. Inspect the empty tracks using the overlay. At widths where only three tracks fit, the two versions look the same.

Ask: Which version should we use when we want existing cards to expand into the unused space?

A container narrower than `14rem` can still overflow. As a short preview of responsive design, try:

```css
grid-template-columns: repeat(auto-fit, minmax(min(100%, 14rem), 1fr));
```

The inner `min()` limits the minimum track size to the available container width when that width is less than `14rem`. Detailed responsive sizing is covered in the next part. Restore the card grid to `repeat(3, minmax(0, 1fr))` before moving on.

## 5. Place dashboard items on grid lines

Select `.dashboard` and turn on its Grid overlay. The original dashboard has three columns, but the header currently occupies just one cell. We want it to span all three columns above the other panels.

Append this rule after the dashboard container rule:

```css
.dashboard header {
  grid-column: 1 / -1;
}
```

The header starts at column line `1` and ends at the last explicit column line (`-1`, here line `4`). The remaining items are automatically placed in source order on the next row. Identify the header's start and end lines in the overlay. Try `1 / 3`: the header spans only two columns. Restore `1 / -1`.

Now explicitly define two row tracks by adding this declaration inside `.dashboard`:

```css
grid-template-rows: auto auto;
```

Add the following placement rules to see how row and column coordinates work together:

```css
.dashboard header { grid-column: 1 / -1; grid-row: 1 / 2; }
.dashboard aside { grid-column: 1 / 2; grid-row: 2 / 3; }
.dashboard main { grid-column: 2 / 3; grid-row: 2 / 3; }
.dashboard footer { grid-column: 3 / 4; grid-row: 2 / 3; }
```

Replace the earlier header rule rather than keeping both versions. The visual layout remains the same, but all four items now have explicit positions. To demonstrate row spanning, temporarily set the sidebar to `grid-row: 1 / 3` and the header to `grid-column: 2 / -1`. The sidebar spans both rows without overlapping the header. Restore the four rules above.

Ask: Why do we specify the end line rather than the number of the final cell? What happens to automatic placement when an item already occupies a cell?

## 6. Replace line-based placement with named grid areas

Line numbers are useful for precise placement, but they can be difficult to read when a dashboard has multiple regions. Remove all four line-based item placement rules and replace the entire dashboard layout block with:

```css
.dashboard {
  display: grid;
  grid-template-columns: 1fr 2fr 1fr;
  grid-template-areas:
    "head head head"
    "nav  tasks stats";
  gap: 1rem;
}
.dashboard header { grid-area: head; }
.dashboard aside { grid-area: nav; }
.dashboard main { grid-area: tasks; }
.dashboard footer { grid-area: stats; }
```

Read the template as a map of cells: each string describes one row, and each token describes one cell. Repeating `head` across three cells forms a single rectangular area. The `grid-area` declarations assign each direct child to its named region. The rows are explicitly defined by the area template and have automatic track sizes here.

The final result should match the previous line-based dashboard. Enable named area labels in the overlay if supported.

Try a different rectangular template while keeping the same three columns:

```css
grid-template-areas:
  "head head head"
  "nav  tasks stats"
  "nav  tasks .";
```

The sidebar and tasks areas now span two rows; the dot represents an unnamed cell. The extra row may have zero height if there is no content requiring it. Temporarily add `grid-template-rows: auto auto 4rem` to make that row visible, then remove this declaration.

To demonstrate an invalid area, temporarily change the template to `"head head head" "head tasks stats"`. The `head` cells form an L rather than a rectangle, so the browser rejects the declaration. Restore the original valid two-row template immediately. Every named area must be rectangular and every template row must contain the same number of cells.

## 7. Change the layout without changing the HTML

Replace both the column and area declarations inside `.dashboard`:

```css
grid-template-columns: 1fr;
grid-template-areas:
  "head"
  "nav"
  "tasks"
  "stats";
```

All four regions now appear in one column. The `grid-area` declarations on the items remain unchanged. Compare this layout at narrow and wide browser widths; it is a manual change, not an automatic breakpoint. The next part introduces media queries for switching layouts automatically.

Restore the three-column template and `1fr 2fr 1fr`. Explain that visual placement does not change DOM reading order or keyboard navigation order. Preserve meaningful source order when designing layouts.

## Finish

Recap the difference between defining tracks and placing items. Ask attendees when named areas might be more readable than line numbers. The next slide compares Flexbox and Grid; Exercise 10 applies named areas to the continuous Task Manager.

Restore the original two layout rules from the Starting point section, removing all added placement and temporary declarations. Ensure the HTML again contains the three original task labels. The demo is ready to repeat.
