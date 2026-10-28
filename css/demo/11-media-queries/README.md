# Demo 11 — Media Queries

## Objective and preparation

Turn an unconditional three-column dashboard into a responsive layout. Open `index.html` and `styles.css`, then enable the browser's responsive design/device toolbar. Keep a copy of the initial stylesheet. The examples assume a browser initial font size of 16px (48rem = 768px; 64rem = 1024px).

## 1. Investigate the existing problem

The initial `.dashboard` uses three fractional tracks and the area template `"nav tasks stats"`. Start at 1200px and reduce the viewport to 360px. Ask what changes: the tracks shrink but their arrangement remains the same. Inspect the computed `grid-template-columns` and enable the Grid overlay. The task text and statistics become crowded. Do not fix the problem with a device-specific width.

## 2. Establish a mobile-first base

Replace only the column and area declarations in `.dashboard`:

```css
grid-template-columns: minmax(0, 1fr);
grid-template-areas: "nav" "tasks" "stats";
```

The three sections now stack in DOM order at every width. At 1200px the layout wastes horizontal space. Ask when the sidebar and task content can comfortably fit alongside one another.

## 3. Add two content-driven breakpoints

Append these rules in this order:

```css
@media (min-width: 48rem) {
  .dashboard {
    grid-template-columns: minmax(0, 1fr) minmax(0, 3fr);
    grid-template-areas: "nav tasks" "stats stats";
  }
}
@media (min-width: 64rem) {
  .dashboard {
    grid-template-columns: minmax(0, 1fr) minmax(0, 3fr) minmax(0, 1fr);
    grid-template-areas: "nav tasks stats";
  }
}
```

Inspect at 767, 768, 1023 and 1024 CSS pixels. The intermediate layout places statistics underneath both columns. At 1024px both queries match, but later declarations win at equal specificity. Swap the two query blocks temporarily and predict the result at 1200px. Restore their original order. Breakpoints here are experimental starting values, not universal device categories.

## 4. Compare maximum width and combined conditions

Append the following experimental rules:

```css
@media (min-width: 48rem) and (min-height: 32rem) {
  .dashboard { gap: 2rem; }
}
@media (max-height: 32rem) {
  .page-header { position: static; }
}
```

At a wide, tall viewport the gap increases; at a wide but short viewport it returns to the base value. Scroll the short page to see the header leave the viewport. Test exactly 512px height: both height conditions include equality. Discuss why the conditions govern different properties. Remove the experimental gap rule; retain or remove the header rule as desired for discussion.

## 5. Investigate the cascade

Append `.dashboard { gap: 1.5rem; }` after the media rules. Inspect the Styles pane and the computed gap. A matched media query is not more specific than an ordinary rule. Restore the stylesheet by removing this last rule. To repeat the complete demo, restore the original three-column stylesheet from the course archive.

## Testing and discussion

Resize continuously, test 200% browser zoom, short landscape viewports and Tab navigation. Ask why DOM order was not changed, whether every component needs a breakpoint, and what happens when a long translated heading requires more room. The responsive toolbar reports CSS pixels rather than physical display pixels.
