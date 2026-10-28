# Demo 06 — Inheritance: inherit, initial and unset

## Starting point

- Open `http://localhost:5500/css/demo/06-inheritance-keywords/index.html` and `styles.css`.
- Inspect the parent card and the three example paragraphs. Locate the parent and intermediate row declarations:

  ```css
  .task-card { color: navy; padding: 24px; /* other styles */ }
  .example-row { padding: inherit; /* layout styles */ }
  ```

  - `color` is normally inherited; `padding` is not. The intermediate row inherits `color` automatically and explicitly copies `padding` from the card.
  - All three paragraphs are children of the row, not direct children of the card. This is important for the `inherit` example.
  - The grid rules merely arrange the examples; they are not the subject of this demo.

## Explicit inheritance

- Locate the first paragraph rule:

  ```css
  .example-inherit { color: inherit; padding: inherit; }
  ```

  - Select the paragraph and inspect the computed values: navy and `24px` on each padding side.
  - Temporarily disable the row's `padding: inherit` declaration. Its padding becomes zero, and so does the paragraph's inherited padding. The keyword always refers to the immediate parent, not a selected ancestor.
  - Restore the row declaration.

## Reset to the CSS-defined initial value

- Locate the second paragraph rule:

  ```css
  .example-initial { color: initial; padding: initial; }
  ```

  - Inspect its computed `padding` (zero) and `color` (the CSS initial color, normally resolving to the platform's default canvas text color).
  - Explain that `initial` is not a request to apply the browser's user-agent stylesheet. It sets the CSS-defined initial value for that property.

## Choose automatically with unset

- Locate the third rule:

  ```css
  .example-unset { color: unset; padding: unset; }
  ```

  - Predict both computed values before inspecting DevTools.
  - For an inherited property like `color`, `unset` behaves like `inherit`. For a non-inherited property like `padding`, it behaves like `initial`.
  - Change the card's color and padding temporarily to `darkgreen` and `32px`. Compare the three cards again: the first copies both values, the second resets both, the third follows only the color.
  - Restore `navy` and `24px`.

## Finish

- Use the computed values rather than the visual appearance alone. The background and border colors of the paragraphs come from other declarations and should not distract from the test properties.
- Ask attendees to predict the result of each keyword for both properties. Reload the original page after the experiment.
