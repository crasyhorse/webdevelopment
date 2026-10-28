# Demo 04 — The cascade: deciding which declaration wins

## Starting point

- Open `http://localhost:5500/css/demo/04-cascade/index.html` and `styles.css`.
- Select the **Review the pull request** heading in DevTools. It is an `h2` with `class="card-title"` inside an article with `id="important-task"`.

  ```html
  <article class="task-card" id="important-task">
    <h2 class="card-title">Review the pull request</h2>
    <p>Task priority: high</p>
  </article>
  ```

## Source order as a tie-breaker

- Look at the two active declarations in `styles.css`:

  ```css
  .card-title { color: navy; }
  .card-title { color: teal; }
  ```

  - Ask which color appears. In DevTools the navy declaration is crossed out; the computed color is teal.
  - Reverse the two rules and reload:

  ```css
  .card-title { color: teal; }
  .card-title { color: navy; }
  ```

  - The heading changes to navy. Neither selector nor property has changed; the final tie-breaker is source order.
  - Restore the original order.

## Specificity can decide before source order

- Uncomment Experiment A:

  ```css
  #important-task .card-title { color: darkorange; }
  ```

  - Reload. The heading becomes dark orange. Move this rule above both ordinary class rules. It still wins.
  - The cascade compares specificity before source order for otherwise equally ranked declarations. Leave the calculation of selector weights to Demo 05.

## Importance is an earlier cascade criterion

- Keep Experiment A enabled and uncomment Experiment B:

  ```css
  .card-title { color: crimson !important; }
  ```

  - Reload. Crimson wins over the normal more-specific rule.
  - Inspect the overridden declaration and the `!important` flag in DevTools. Move the important rule earlier; it still wins here.
  - Explain that `!important` changes a declaration's cascade priority, not its selector's specificity. It affects that declaration only, not all declarations in a rule.
  - Explain that this is a controlled example with normal/important unlayered author rules, no running transitions, and no competing user styles. The complete cascade has additional criteria.

## Finish

- Disable both experiments and restore navy followed by teal.
- Ask which decision was relevant in each test: source order, specificity, or importance. Do not calculate selector weights here; that is the purpose of Demo 05.
