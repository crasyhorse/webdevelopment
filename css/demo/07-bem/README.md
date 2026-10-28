# Demo 07 — BEM in the Task Manager

## Starting point

- Open `http://localhost:5500/css/demo/07-bem/index.html`, `index.html` and `styles.css`.
- Find the independently named blocks `task-manager`, `task-list` and `task-form`. Explain that BEM is a naming convention for ordinary CSS classes, not new HTML syntax or a framework.

## Block and element

- Look at the list markup:

  ```html
  <ul class="task-list">
    <li class="task-list__item">Prepare slides</li>
    <li class="task-list__item task-list__item--high-priority">Review pull request — high priority</li>
    <li class="task-list__item task-list__item--completed">Review HTML — completed</li>
  </ul>
  ```

  - `task-list` is the block; `task-list__item` is an element belonging to that block.
  - The double underscore separates the block name from its element name. The same base class appears on all three items.
  - Find the base rule in `styles.css`:

  ```css
  .task-list__item {
    margin: 0.5rem 0;
    padding: 0.65rem 0.9rem;
    background: #eaf2fc;
    border-left: 4px solid #8ba9c6;
    border-radius: 5px;
  }
  ```

  - Inspect each item. The base rule applies even when an additional modifier changes some declarations.

## Modifier and composition

- Locate the two modifier rules following the base rule:

  ```css
  .task-list__item--high-priority {
    background: #fff0d9;
    border-left-color: #a65b0d;
  }
  .task-list__item--completed {
    color: #405f50;
    text-decoration: line-through;
    background: #e4f4e8;
    border-left-color: #32774b;
  }
  ```

  - In DevTools, remove only `task-list__item--high-priority` from the second item; its base styling remains. Re-add the modifier.
  - Now temporarily remove `task-list__item` while retaining the modifier. Observe that the common spacing and border no longer apply. Restore the base class.
  - Add `task-list__item--completed` to the first item temporarily; the style is reusable without changing the stylesheet. Remove the test modifier.
  - Explain why the status descriptions in HTML matter: appearance alone should not be the only way to convey task state.

## Independently reusable blocks

- Find the separate form:

  ```html
  <form class="task-form" action="" method="get">
    <label class="task-form__label" for="task-name">New task</label>
    <input class="task-form__input" id="task-name" name="task" required minlength="3">
    <button class="task-form__submit" type="submit">Add task</button>
  </form>
  ```

  - The form remains its own block inside the Task Manager. Its element selectors use single classes, rather than a long ancestor selector chain.
  - Inspect `.task-form__submit` and its `:hover` and `:focus-visible` rules. Use the keyboard to verify focus is still visible.
  - Explain that the `for`, `id`, and `required` attributes are retained for semantics and functionality. BEM class names do not replace them.

## Finish

- Restore all temporary changes and reload.
- Base rules provide common styling; modifiers layer on variations. Keeping selectors simple makes these changes predictable.
- Exercise 04 applies the same naming idea to the attendees' existing Task Manager rather than copying this demo's standalone markup.
