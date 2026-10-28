# Exercise 07 — Box model, overflow, responsive images and controls

## Learning objectives

- Improve the **same Task Manager** completed in Exercise 06; no page replacement.
- Apply the box model and `border-box` sizing to real BEM components.
- Keep longer task lists reachable with `overflow-y: auto`.
- Constrain an intrinsically wide image and real form controls on narrow screens.

## Starting point

Open `index.html` and `styles.css`. They are **byte-identical to the Exercise 06 solution**, including the BEM Task Manager, floated icon, viewport header and two proportional action buttons. A separate, supplied file `task-preview.svg` is provided as an **asset**; you will add it to this page yourself. Do not delete the existing tasks, header or form.

## Tasks

1. In DevTools, inspect `.task-manager` and one `.task-list__item`. Identify content, padding, border and margin in the box-model panel. Note that the existing styles use `width`, `max-width`, `padding`, borders, and margins.
2. At the **end** of `styles.css`, add `*, *::before, *::after { box-sizing: border-box; }`. Temporarily disable it in DevTools and compare computed width of the Task Manager. Restore the rule.
3. Find the `<ul class="task-list">` in `index.html`. Keep its two existing `<li>` elements and **append six new `<li class="task-list__item">`** elements with these texts: `Inspect keyboard focus`, `Write CSS comments`, `Compare box sizing`, `Test a narrow viewport`, `Review image dimensions`, and `Check form validation`. There should now be eight tasks total.
4. In CSS, add a `.task-list` rule with `max-height: 19rem` and a visible border. First **do not set overflow**; scroll the page to see how additional items may paint outside the constrained list box.
5. Add `overflow-y: auto` to `.task-list`. Scroll within the list, verify all eight tasks remain reachable, and compare briefly with `overflow-y: hidden`. Restore `auto`.
6. Give `.task-list__item` consistent padding (`.75rem 1rem`), vertical margin (`.5rem 0`), and a radius. Inspect the result in DevTools. Keep the existing high-priority and completed modifier styles visible.
7. Immediately **after the task list**, add a semantic `<figure class="task-manager__attachment">` containing `<img class="task-manager__preview" src="task-preview.svg" alt="Illustrated preview of a task attachment">` and a `<figcaption>` saying `Preview of a linked task attachment`. The supplied SVG has a natural width of 900px.
8. Add `.task-manager__attachment { max-width: 34rem; margin: 1.5rem 0; padding: 1rem; border: 1px solid #b1c7da; }`. Add a readable border radius. Before styling the image, narrow the viewport and observe how its intrinsic width can spill outside the figure.
9. Add `.task-manager__preview { display: block; max-width: 100%; height: auto; }`. Verify the image stays inside the figure and keeps its aspect ratio. Explain the difference between an image's intrinsic dimensions and its rendered dimensions.
10. Keep the existing `<form>`. Add class `task-form__select` to the priority `<select>` and class `task-form__input` to the optional date `<input>` so these controls share styling with the existing task-name input. Do not remove IDs, labels, `required` or `aria-describedby`.
11. Style `.task-form` with `width: 100%; max-width: 32rem; padding: 1.25rem; border: 1px solid #b1c7da` and a radius. Use `border-box` to keep the form inside its parent.
12. Add a shared `.task-form__input, .task-form__select` rule with `display: block; width: 100%; min-height: 2.75rem; padding: .5rem .65rem; border: 1px solid #7e99b5; border-radius: .4rem; font: inherit;`. Inspect the total width of each control.
13. Add `min-height: 2.75rem` and `padding: .5em 1em` to `.task-form__submit`; preserve its existing colors and focus indicator. Add visible focus outlines to the input/select controls too.
14. Test at **320px** viewport width and **200% zoom**. Use a very long task description and check that no essential text is clipped. Keep `min-height` rather than a fixed height for content areas.
15. Press Tab through both featured-task action buttons and the form fields. Submit an empty task name; confirm the browser still enforces the required field. Use DevTools to explain a task item's content, padding, border and margin.

## Check your result

- This is still the Task Manager built over Exercises 01–06; all prior tasks, form fields, BEM classes and icon remain.
- Eight items are reachable through a scrollable list, including the modified featured task.
- The 900px SVG scales down inside its figure on narrow screens.
- The inputs and select do not exceed the form width; keyboard focus remains visible.
- The two action buttons still scale their padding in `em`, and the icon still floats.

## Questions to discuss

1. What is the difference between `max-height` and `overflow-y`?
2. Why is hiding content rarely appropriate for important task items?
3. How do `max-width: 100%` and `height: auto` cooperate for images?
4. Why can `width: 100%` with padding overflow when `box-sizing` is `content-box`?

**Reference solution:** `../../solutions/07-box-model/`.
