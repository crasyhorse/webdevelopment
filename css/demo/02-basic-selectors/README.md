# Demo 02 — Basic CSS selectors

## Starting point

- Open `http://localhost:5500/css/demo/02-basic-selectors/index.html` and the files `index.html` and `styles.css`.
- In the HTML identify the heading, the two task items, and the section identified by `id="tasks"`.

  ```html
  <section id="tasks">
    <h2>Tasks</h2>
    <ul class="task-list">
      <li class="task-item">Review selectors</li>
      <li class="task-item">Inspect DevTools</li>
    </ul>
    <button class="submit-button">Add task</button>
  </section>
  ```

## Type selector

- Locate the following rule in `styles.css`:

  ```css
  h2 { color: #215f9e; }
  ```

  - Inspect **Tasks** in DevTools. The selector matches the element because its tag name is `h2`.
  - Replace `h2` with `li` and reload. Both task items now receive the color instead of the heading.
  - Restore `h2`. Explain that type selectors are useful when all elements of a particular type should share a style.

## Class selector

- Locate the rule:

  ```css
  .task-item { padding: 0.3rem; }
  ```

  - Inspect the two task items. Both receive the same padding because both have the class `task-item`.
  - Temporarily remove `class="task-item"` from the second item in `index.html`. Reload and inspect the difference in the box model panel.
  - Restore the class. Explain the dot in CSS and the absence of the dot in HTML. A class is reusable.

## ID selector

- Locate:

  ```css
  #tasks { border-left: 4px solid #87b4cf; padding-left: 1.5rem; }
  ```

  - Show how `#tasks` targets the section with `id="tasks"`. Its left border identifies the selected section.
  - Temporarily rename the ID in HTML to `task-section`; the rule no longer matches. Restore the ID.
  - IDs should be unique in a document. Prefer classes for reusable component styles.

## Universal selector

- Inspect the following rule, which matches elements irrespective of type, class or ID:

  ```css
  * { box-sizing: border-box; }
  ```

  - Inspect the `section`, a task item, and the button. Find the declaration in their Styles panel.
  - Explain that the universal selector adds no specificity. The meaning of `box-sizing` is covered later; it is only an example of a shared base rule here.

## Finish

- Ask attendees to identify all four selectors without changing the page. Restore each temporary modification.
- The next exercise will apply basic author CSS to the full Task Manager.
