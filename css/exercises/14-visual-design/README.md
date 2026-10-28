# Exercise 14 — Visual Design

## Starting point and objectives

The starter is the exact application from Solution 13. Keep responsive Grid layouts, container queries, semantic HTML and native interactions. Create a coherent design using typography, color, backgrounds, borders and shadows. Do not introduce custom properties yet; repeated values will motivate the next part.

Open `index.html` and `styles.css` at http://localhost:5500/css/exercises/14-visual-design/index.html. Work in a new section at the end of `styles.css`, as in previous exercises. Compare narrow, intermediate and wide layouts before editing.

## 1. Define a readable type system

Keep a fallback stack such as `Arial, Helvetica, sans-serif`. Set a unitless `line-height: 1.5` on `body`. Retain the fluid title size from Exercise 12 and make its line height tighter (e.g. `1.2`). Give section headings and summary headings distinguishable weights and sizes. Use `max-inline-size: 65ch` on `.task-list__description`. Inspect the resulting body and heading metrics at 320px and 1280px. Which information is prominent? Preserve actual HTML headings.

## 2. Apply your color scheme

Before changing CSS, choose three words describing the intended personality of your Task Manager. Explore a primary hue and two possible harmonies, then choose one. Record the primary hue, harmony, neutral surface/text colors and semantic status colors in your own notes. Generate lighter, darker and muted alternatives; select a small set based on the roles they need to serve. Explain one variation and one accent to a partner. Explore tints, shades and tones using [Paletton](https://paletton.com/) or [Coolors](https://coolors.co/125bd4). Assign roles to primary actions, hover, focus, borders, surfaces and status indicators before changing declarations.

For comparison, the reference solution uses dark slate `#263C55`, light slate `#E8EDF2`, near-white `#FAFBFC`, white `#FFFFFF`, pale orange `#F8E9D8` and pale green `#ECF0DC`. You may choose different colors. Let neutral surfaces dominate and use accent colors selectively. Give the outer page a subtle background and the Task Manager a lighter surface; change related foreground/background colors together. Check actual pairs using DevTools or [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/): normal text generally requires 4.5:1, large text 3:1. Preserve visible task status text and keyboard focus. Do not add custom properties yet.

### Optional web-font experiment

A self-hosted web font can support the selected typography. Obtain a WOFF2 file whose license permits web use and place it temporarily in `fonts/workshop.woff2` beside the stylesheet. No font file is supplied. WOFF2 is a compressed web font format.

```css
@font-face {
  font-family: "Workshop Sans";
  src: url("fonts/workshop.woff2") format("woff2");
  font-weight: 400;
  font-display: swap;
}

body {
  font-family: "Workshop Sans", Arial, sans-serif;
}
```

Inspect the Network and Rendered Fonts panels with cache disabled, and optionally throttle the connection. `font-display: swap` permits fallback text while the font loads; differing metrics may cause layout shifts. Check license, language coverage, available weights, loading cost and privacy (self-hosting avoids requests to a third-party font service). Compare the fallback by temporarily renaming the file or removing the rule. Restore your original font stack and remove the temporary font file before finishing so that the supplied reference handoff to Exercise 15 remains reproducible. No external font dependency is required.

## 3. Define component boundaries

Give task cards and the form consistent corner radii, for example `.5rem`. Add a subtle `box-shadow` to `.task-list__item` (try `0 2px 6px rgb(38 60 85 / 12%)`). Keep the existing priority/completion modifiers and their visible meaning. Use pale orange and green backgrounds for these variants. Compare with the original card before deciding whether the shadow helps.

## 4. Harmonize form controls and actions

Use `font: inherit` on the submit and action buttons, keeping their existing small and large modifiers. Give them a shared dark background, white text and a clearly distinguishable hover state. Keep existing focus indicators; test both keyboard and mouse. Make `.task-form__label` bold and keep the other labels and all native controls intact. Inspect the rendered font of the select and input elements.

## 5. Verify

Test at 320px, 768px and 1280px and resize around the media/container query thresholds. Check the task cards, attachment, controls, navigation and both summary instances. Verify that text remains readable and that no new page-level horizontal overflow occurs. Try 200% zoom. Restore temporary experiments, but keep your design improvements. Do not add gradients or filters solely for decoration.

## Expected result

The same functional dashboard has a dark header, readable text hierarchy, subtle card elevation and consistent controls. Responsive behavior and BEM class names are preserved. The separate reference solution is an example of one acceptable design, not the only visual answer.
