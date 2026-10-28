# Demo 13 — Typography & Visual Design

## Learning objectives

Compare font families and fallback, explain how typography establishes hierarchy, investigate readable text spacing, and use backgrounds and visual effects deliberately.

Open `index.html` and `styles.css` in your editor and visit http://localhost:5500/css/demo/13-visual-design/index.html. The article and sample card are deliberately plain. Use DevTools to try each change; reload to reset temporary DevTools edits, or revert editor changes. Keep the HTML unchanged unless an experiment requires it.

## 1. Compare typefaces

Change the `body` rule successively to `font-family: Georgia, serif`, `font-family: Arial, Helvetica, sans-serif` and `font-family: "DejaVu Sans Mono", Consolas, monospace`. Compare the shapes of `a`, `l`, `I` and `1`, the line breaks and the space each character takes. Inspect the rendered font in the Computed panel. Monospace glyphs have equal advance widths; typefaces with proportional widths do not. Which is appropriate for code, and which would you choose for this article? No family guarantees readability by itself.

### Choose a typeface for the interface

Compare the same card with two alternative visual treatments. Apply one set at a time in DevTools, then restore the original CSS. Neither is a universal solution.

```css
.task-card {
  font-family: Nunito, Lato, sans-serif;
  background: #ECF0DC;
  border-radius: 1rem;
}
.task-card__action {
  border-radius: 1rem;
}
```

```css
.task-card {
  font-family: "IBM Plex Sans", "DejaVu Sans", sans-serif;
  background: #E8EDF2;
  border-radius: 0;
}
.task-card__action {
  border-radius: 0;
}
```

Inspect Rendered Fonts to establish which face is actually used. If neither preferred face is installed, use the fallback or another available face. Compare the title, metadata and button; ask which treatment supports a friendly personal planner and which supports a precise technical dashboard, and why. Then hold the colors and corner radii constant and change only the typeface to isolate its effect. Temporarily edit the article text in DevTools to include `I l 1`, `O 0` and `rn m`; compare how readily the individual characters are distinguished. Test the actual small labels, not just the large title. Consider language coverage, weights and font licensing. Restore the original text and rules before continuing.

## 2. Investigate fallback

```css
.article {
  font-family: "Not Installed Workshop Font", Georgia, serif;
}
```

Inspect Rendered Fonts in DevTools. The deliberately unavailable family is skipped. Remove Georgia and observe the generic fallback. A font may also lack individual glyphs; fallback can occur within one line.

The self-hosted web-font experiment is part of Exercise 14; continue with the locally available fonts for this demo.

## 3. Establish hierarchy

Compare size, weight, spacing and contrast one change at a time. Group related items using spacing and reserve strong emphasis for the most important information.

```css
.article__title, .task-card__title {
  font-size: 1.5rem;
  font-weight: 700;
  line-height: 1.2;
}
.task-card__detail { color: #526B80; font-size: .875rem; }
```

Compare with the initial 1rem regular headings. Ask which information is found first and inspect the accessibility tree: styling changes the presentation, not heading semantics.

## 4. Choose an appropriate line height

Use the same article and compare `line-height: 1`, `1.5` and `2.3` at `font-size: 1rem`. With a 16px root size the baseline distances in this simple paragraph are 16px, 24px and 36.8px. Ask which is too tight, which is comfortable and which begins to weaken the visual connection between lines. Inspect the computed values in DevTools.

```css
.article__text {
  font-size: 1rem;
  line-height: 1.5;
}
```

For a heading, temporarily edit its text to “Manage your tasks more efficiently”, then constrain its width so that it wraps. Compare these two line heights at the same font size:

```css
.article__title {
  font-size: 2.5rem;
  max-inline-size: 12ch;
  line-height: 1.2;
}
```

Try `1.5` instead of `1.2`. At a 16px root size, the respective used line heights are 48px and 60px. Which keeps the heading visually cohesive? Restore its original text and width afterward.

Change the body text family between Arial and Georgia, keeping its size and line height unchanged. Compare x-height, ascenders, descenders and apparent whitespace. Then compare a short text column with a longer one (see Experiment 5). Adjust the line height according to actual reading comfort rather than treating `1.5` as the only correct value.

Try a fixed `16px` line height and increase the font size; observe how cramped larger text becomes. A unitless multiplier inherits as a number and is applied to the child's own font size. Restore the unitless value.

Finally, temporarily set `line-height: 1.5`, `letter-spacing: .12em`, `word-spacing: .16em` and paragraph spacing of `2em` (e.g. `margin-block-end: 2em`) on the relevant text. Check for clipping or lost functionality. WCAG 2.2 [Text Spacing](https://www.w3.org/WAI/WCAG22/Understanding/text-spacing.html) requires support for these user overrides where applicable, not these default styles on every element. Restore all temporary changes.

## 5. Limit line length

```css
.article__text { max-inline-size: 65ch; }
```

Start with a guideline of roughly 45–75 characters per line for continuous Latin-script prose, not a hard requirement. Compare 30ch, 65ch and 90ch, and adjust line height alongside width. Resize the viewport. The text does not have to fill the full article width on large displays. `ch` measures the advance of the zero glyph, so 65ch is not exactly 65 characters. Try a proportional and a monospace font and compare line breaks. Avoid treating a typographic guideline as a hard accessibility criterion.

## 6. Text formatting

Try `letter-spacing: .03em`, `word-spacing: .1em`, `text-align: center`, `text-transform: uppercase` and `text-decoration: underline` separately on `.article__text`. Compare the resulting line breaks and ease of scanning. Restore normal alignment and spacing. Discuss why long uppercase paragraphs or underlined non-links can be confusing. A real heading or link still needs semantic HTML.

## 7. Background size and position

The supplied `scene.svg` is decorative. Remove `background-image` temporarily to see the fallback `background-color`. Re-enable it and compare repetitions. In `.task-card__preview` set `background-size: contain`, then `cover`. Resize the window or set the preview width to 15rem. Inspect the unused space versus cropping. Change `background-position: left center` and `background-repeat: repeat`. Restore `center` and `no-repeat`. An informative picture should instead use an HTML image with an appropriate alternative.

## 8. Add a gradient

Replace the preview's `background-image` with `linear-gradient(135deg, #E1ECF2, #C8D59A)`. Change the angle and observe the direction. A gradient is an image layer, not a background color. Keep foreground text contrast adequate if text is added.

## 9. Borders and shadows

```css
.task-card {
  border: 1px solid #CAD5E0;
  border-radius: .5rem;
  box-shadow: 0 4px 12px rgb(38 60 85 / 15%);
}
```

Change the vertical offset, blur and optional spread independently. Compare with a card that has a border but no shadow. Shadows do not create layout space. Use `text-shadow: 1px 1px 2px #CAD5E0` on the title briefly and remove it if it makes text less clear. Required boundaries must not depend on a faint shadow.

## 10. Opacity and filters

Try `.task-card { opacity: .5; }` and compare with a translucent background color such as `background-color: rgb(38 60 85 / 10%)`. Only opacity fades all descendants. Try `opacity: 0` and press Tab: the invisible button may still receive focus. Restore opacity immediately. Apply `filter: grayscale(1)` to `.task-card__preview` and compare. Filters are visual, not semantic. Finish by testing 320px and wide viewports and restoring the original HTML/CSS.
