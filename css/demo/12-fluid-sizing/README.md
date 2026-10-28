# Demo 12 — Intrinsic Layouts & Fluid Sizing

## Objectives and preparation

The viewport-based arrangement is now familiar from Exercise 11. This demonstration investigates which decisions the browser can make without an explicit breakpoint: wrapping items, fitting Grid tracks, limiting an element's size and smoothly adjusting typography and spacing.

Open `index.html` and `styles.css` in your editor and browser (`http://localhost:5500/css/demo/12-fluid-sizing/index.html`). Start with the unmodified files. Use the responsive device toolbar at 100% zoom, the Computed pane and the Flexbox/Grid overlays. For numeric predictions assume `1rem = 16px` and the initial stylesheet's `box-sizing: border-box`. The panel has 16px padding on both sides and no border. The starting width is 40rem, not a responsive width. The intentionally long identifier illustrates a separate automatic-minimum-size problem. Conduct the steps in order; the CSS changes accumulate except where explicitly described as temporary. Some examples intentionally overflow until the corresponding fix is applied.

## 1. A flexible container without a media query

Inspect the starting `.panel`:

```css
.panel {
  width: 40rem;
  margin: 1rem auto;
  padding: 1rem;
  background: #F3F6F9;
}
```

At 1000px its border-box width is 640px. Narrow the viewport to 480px: the panel stays 640px and extends beyond the viewport. Ask how relative sizing from Part IV could help. Temporarily replace only the width declaration with:

```css
width: 100%;
```

It now follows the viewport at both 480px and 1000px; it has no upper limit. Keep this width for the next wrapping experiment. Do not try to fix overflow by hiding it. Inspect which element extends beyond its containing block.

## 2. Flexible containers and Flexbox wrapping

Locate the three action buttons and their `.actions` Flexbox container. The initial CSS is:

```css
.actions {
  display: flex;
  gap: 1rem;
}
.actions__button {
  flex: 0 1 8rem;
  min-width: 0;
  /* Visual styles omitted */
}
```

The default direction is `row`, and the default `flex-wrap` is `nowrap`. At a wide width the three buttons have a basis of 128px and two 16px gaps (416px total). At a 340px viewport the content width of the panel is 308px: the buttons shrink because `flex-shrink` is 1, but remain on one line. Turn on the Flexbox overlay and inspect their computed widths.

Add:

```css
.actions { flex-wrap: wrap; }
```

Compare at 500px and 340px viewport widths. The former provides 468px of content space, so all three buttons fit on the first line. The latter provides 308px: two buttons plus one gap require 272px, but a third requires 416px; the third moves to a new line. The browser determines the line breaks without `@media`. `flex-shrink` can still shrink an item if even a single item cannot fit its line; wrapping is not a guarantee against every possible overflow. Retain wrapping.

## 3. Let Grid determine the number of tracks

The three task cards already use:

```css
.task-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(12rem, 1fr));
  gap: 1rem;
}
```

Recall `repeat()`, `minmax()` and `auto-fit` from Demo 10. With the flexible panel width still in effect, try 640px (608px content width) and 480px (448px content width). Three 192px tracks and two gaps need exactly 608px; at 448px only two such tracks plus a gap fit, and the third item moves to the next row. The two existing tracks expand to share the available space: each is 216px wide at 448px. At 320px (288px content width), one track fits. Inspect the Grid overlay rather than estimating by eye.

At 1000px viewport width, temporarily replace `auto-fit` with `auto-fill`. With only three cards, the empty repeated tracks remain and take space with `auto-fill`; `auto-fit` collapses empty tracks so the occupied tracks can grow. Restore `auto-fit`. Ask how track count changes discretely even though track widths are flexible.

## 4. Discover minimum sizes and horizontal overflow

Still using `width: 100%`, narrow the viewport to 192px (160px content width). The grid track still has a 192px minimum. Compare with 272px (240px content width), where it fits. The minimum is a real constraint, not a suggestion. Inspect the grid track using the overlay. Leave the minimum unchanged until the fix in step 6.

Next inspect the separate `Task ID` example at 340px. `.size-probe__value` is a flexible item with an automatic minimum size; the long unbroken identifier can prevent it from shrinking. Measure its width in DevTools. Add the following declarations one at a time:

```css
.size-probe__value {
  min-width: 0;
  overflow-wrap: anywhere;
}
```

`min-width: 0` allows the flex item itself to shrink below the automatic content minimum. It does not by itself make an unbroken word wrap. `overflow-wrap: anywhere` permits emergency breaks in long strings (and affects their min-content size). Inspect the different results after each declaration; retain both. Track overflow and overflowing text are separate problems. Avoid using `overflow-x: hidden` to conceal them.

## 5. Select the smaller value with `min()`

The panel is currently fluid but unlimited. Replace its `width: 100%;` with:

```css
width: min(100%, 40rem);
```

At 480px the panel is 480px wide; at 1000px its width is capped at 640px. `min()` returns the smaller of the resolved values: `100%` depends on the available containing-block width, whereas `40rem` equals 640px under our assumption. Compare with the more familiar combination `width: 100%; max-width: 40rem;`. Retain the `min()` declaration.

## 6. Repair the Grid minimum with a nested `min()`

Return to the overflow case from step 4 (192px viewport width / 160px grid width). Replace the Grid track declaration:

```css
grid-template-columns: repeat(auto-fit, minmax(min(100%, 12rem), 1fr));
```

At 160px available width, `min(100%, 12rem)` is 160px, not 192px. The track can fit; at 240px available width the minimum is 192px and `1fr` distributes extra space. Temporarily change a task name to a long unbroken string. Add `min-width: 0` and `overflow-wrap: anywhere` to `.task-grid__item`, then observe its text rather than just the track. Restore the short label and retain the CSS fix. Verify that the track now fits even if other, independent content on the page still needs adjustment.

## 7. Select the larger value with `max()`

Replace only the panel padding:

```css
padding: max(1rem, 2vw);
```

At a 400px viewport, `2vw` is 8px, so padding is 16px. At 1200px, `2vw` is 24px, so padding is 24px. The crossover is 800px, independent of the panel's 640px cap. Inspect the computed box model. Ask why this establishes a floor rather than a cap. Restore `padding: 1rem;` before the next experiment so the previous track predictions remain applicable.

## 8. Fixed steps versus fluid sizing

The heading initially has `font-size: 2rem`. Temporarily replace that declaration with the following base value and insert the queries immediately after the heading rule:

```css
.panel__title { font-size: 1.5rem; }
@media (min-width: 600px) {
  .panel__title { font-size: 2rem; }
}
@media (min-width: 1200px) {
  .panel__title { font-size: 3rem; }
}
```

At widths 599px, 600px, 1199px and 1200px, inspect the heading's computed size. It changes from 24px to 32px at 600px and from 32px to 48px at 1200px; between breakpoints it remains constant. This is stepped sizing. Breakpoints are valuable when an arrangement needs to change, but a dimension can often vary continuously instead. Temporarily replace the entire heading rule and both queries with:

```css
.panel__title { font-size: 4vw; }
```

Compare 400px (16px), 900px (36px) and 1400px (56px). The value scales continuously but has neither a useful lower nor upper bound. This motivates `clamp()`.

## 9. Bound a fluid value with `clamp()`

Replace the heading declaration with:

```css
font-size: clamp(1.5rem, 4vw, 3rem);
```

The three arguments are minimum, preferred and maximum. With a 16px root font size, predict before testing:

| Viewport | Preferred `4vw` | Computed size |
|---:|---:|---:|
| 400px | 16px | 24px |
| 600px | 24px | 24px |
| 900px | 36px | 36px |
| 1200px | 48px | 48px |
| 1400px | 56px | 48px |

From 600px through 1200px the preferred value is within the limits. Below and above that interval the minimum or maximum applies. Test the boundaries and inspect the computed size in the browser. In these examples the minimum does not exceed the maximum; if they conflict, CSS gives precedence to the minimum.

## 10. Fluid typography and spacing

Replace the heading's preferred expression and use a bounded padding on the panel:

```css
.panel__title {
  font-size: clamp(1.5rem, 1rem + 2vw, 2.5rem);
}
.panel {
  /* Keep the existing width, margin and background */
  padding: clamp(.75rem, .5rem + 1vw, 1.5rem);
}
```

The expressions combine a font-relative term with a viewport-relative term. At a 320px viewport, heading size is 24px and padding is 12px; at 900px the heading is 34px and padding is 17px; at 1600px the heading is 40px and padding is 24px. The `+` operator needs surrounding whitespace. Inspect the computed font size and box model. A rem contribution helps the formula respond to a user's font-size preference, but does not guarantee accessible zoom behavior. Try a longer translation, larger browser default text, and 200% zoom; verify that text can grow and wrap without losing content or controls. Do not disable zoom.

## 11. Review and reset

Test the resulting page at 320px, 768px and 1280px. Identify which decisions are continuous (panel width, typography, padding) and which are discrete (Flexbox line breaks, Grid track count). Ask attendees when an explicit media query would still be preferable—for example, to choose a different named Grid arrangement instead of relying on auto-placement. Inspect the Flexbox and Grid overlays, keyboard-accessible buttons and any remaining overflow. Restore `index.html` and `styles.css` from the original demo before repeating it. The local experiments do not alter the Task Manager exercises.
