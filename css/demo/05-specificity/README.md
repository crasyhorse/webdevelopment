# Demo 05 — Calculating selector specificity

## Starting point

- Open `http://localhost:5500/css/demo/05-specificity/index.html` and `styles.css`.
- Inspect the Add task button inside `form.task-form`. All competing declarations in this demo are normal, unlayered author declarations. Do not introduce `!important`.

  ```html
  <form class="task-form" action="" method="get">
    <!-- other form controls -->
    <button class="submit-button" type="submit">Add task</button>
  </form>
  ```

## Compare type and class selectors

- Locate the three color rules below the base component styles:

  ```css
  button { color: #1f5c99; }
  .submit-button { color: #197747; }
  button { color: #b14c37; }
  ```

  - Write the three columns on the board: ID — CLASS — TYPE.
  - `button` contributes one type selector (`0-0-1`), while `.submit-button` contributes one class selector (`0-1-0`).
  - Compare left to right. The class rule wins even though the last type rule comes later. The expected computed text color is `#197747`.
  - Ask attendees to predict before inspecting DevTools. Point out all crossed-out text-color declarations, including the base white color if shown.

## Add another matching class

- Uncomment Experiment A:

  ```css
  .task-form .submit-button { color: #7a3ea2; }
  ```

  - Count two class selectors (`0-2-0`). The descendant combinator adds no weight.
  - Predict the winner, reload and verify purple. Move the declaration before the simpler class rule; the result does not change.
  - Try adding a type selector to a class rule temporarily, for example `button.submit-button` (`0-1-1`). It beats `0-1-0` but loses to `0-2-0`. Remove this test rule.

## Add an ID selector

- Add an ID to the actual button in `index.html`:

  ```html
  <button id="task-submit" class="submit-button" type="submit">Add task</button>
  ```

- Uncomment Experiment B:

  ```css
  #task-submit { color: #7442ac; }
  ```

  - The weight is `1-0-0`. It beats `0-2-0` and `0-1-1`; the columns are compared lexicographically, not added.
  - Verify the winning declaration in DevTools. Explain why a selector must match the element before its weight matters.

## Finish

- Remove the experimental ID from HTML and re-comment both experiments.
- Prefer simple reusable class selectors rather than deliberately escalating specificity.
- Demo 04 identifies the cascade criterion that decides a conflict. Demo 05 calculates the weights of matching selectors after earlier cascade criteria have been held equal.
