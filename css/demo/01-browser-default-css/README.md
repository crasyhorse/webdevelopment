# Demo 01 — Browser default CSS

## Starting point

- Start your local web server at the repository root (the slides assume port `5500`). Open `http://localhost:5500/css/demo/01-browser-default-css/index.html`.
- Open `index.html` in the editor. There is no stylesheet link and no `style` element. This is the semantic Task Manager from the beginning of the workshop.

## Inspect browser styles

- Open DevTools and select the `h1` element containing **Task Manager**.
  - Find the browser's **user agent stylesheet** in the Styles panel.
  - Look at the computed `font-size`, `font-weight` and margins. A heading is already larger and bolder than a paragraph, even though the page has no author CSS.
  - Inspect the adjacent paragraph. Compare its computed font size and margins.

- Inspect the `ul` and one of its `li` children.
  - Explain that markers and indentation result from browser styles. Inspect `list-style-type` and `padding-inline-start` on the list. Actual values may differ across browsers.

- Inspect the **Tasks** link and the **Add task** button.
  - Links typically have a color and underline; form controls have their own default appearance.
  - Tab through the form to show that the browser also provides a keyboard focus indication.

## Override a default

- In DevTools, select `h1`. Add these temporary declarations in the element's Styles panel:

  ```css
  color: #245f9f;
  font-size: 24px;
  ```

  - The author-provided inline declarations override the ordinary defaults for those properties.
  - Disable the two declarations using their checkboxes. The heading returns to its default appearance.
  - Repeat with the list: temporarily add `list-style-type: none` to the `ul`. Its bullets disappear, but the HTML remains a list. Re-enable the original appearance by deleting the test declaration.

- Reload the page. Changes made only in DevTools are not stored in `index.html`.

## Explain

- A page without an author stylesheet is not a page without styles. The browser supplies default presentation.
- The HTML continues to convey structure and semantics even when its appearance changes.
- Browser and platform defaults can differ. The point is to inspect the running browser, not memorize its pixel values.
- Continue to Demo 02 to see how author styles target selected elements.
