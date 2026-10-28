# Demo 03 — Three ways to add CSS to HTML

## Starting point

- Open `http://localhost:5500/css/demo/03-three-ways-to-add-css/index.html`, `index.html` and `styles.css`.
- Use the same heading for each of the three experiments so that only the source of CSS changes.

## External stylesheet

- Look at the stylesheet link in the HTML head:

  ```html
  <link rel="stylesheet" href="styles.css" />
  ```

  - `href` is relative to the HTML file. The browser loads `styles.css` from the same directory.
  - Find the heading `<h1 class="task-title">Task Manager</h1>` and its matching rule:

  ```css
  .task-title {
    color: #1f5c99;
  }
  ```

  - Reload. The heading is blue. Inspect the rule in DevTools and click the stylesheet filename to locate its source.
  - Explain that a separate stylesheet can be shared by multiple HTML pages, and keeps presentation separate from markup.

## Internal stylesheet

- Look at the `style` element directly after the stylesheet link. Remove the comment around the `color` declaration:

  ```html
  <style>
    .task-title {
      color: #b14c37;
    }
  </style>
  ```

  - Reload. The heading is now reddish brown. Locate both matching rules in DevTools. The external `color` is crossed out.
  - Both declarations are normal author styles with the same selector. The internal rule is later in document order, so it wins in this case. Internal CSS does not automatically have a higher priority than external CSS.
  - Temporarily move the `style` element before the stylesheet link. Compare the result and restore its original position.

## Inline style

- Add a `style` attribute directly to the heading:

  ```html
  <h1 class="task-title" style="color: #197747;">Task Manager</h1>
  ```

  - Reload. The heading is green. DevTools shows an `element.style` declaration and the other colors are overridden.
  - Explain that inline declarations apply to one element and normally override ordinary author stylesheet rules. They are harder to reuse and maintain.
  - Remove the attribute. The internal color returns; comment out the internal declaration and the external color returns.

## Verify a stylesheet rule actually matches

- Inspect the Add task button. The supplied stylesheet has a `.task-button` rule, but the HTML uses `class="submit-button"`.
- Temporarily rename that CSS selector to `.submit-button`:

  ```css
  .submit-button {
    background-color: #1f5c99;
    color: white;
  }
  ```

  - The button now receives the external styles. A loaded stylesheet has no effect on an element if the selector does not match it.
  - Restore the original selector if you want to repeat this diagnostic demonstration later.

## Finish

- All three approaches are valid CSS. External stylesheets are the preferred default for this Task Manager.
- The example assumes normal author declarations. Other cascade priorities, including `!important`, are discussed in a later demo.
- Restore the original file contents before leaving the demo.
