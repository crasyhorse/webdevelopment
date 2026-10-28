# Exercise 02 — Combinators, attributes and pseudo-selectors

## Learning objectives

- Select elements using the child (`>`), descendant (space) and adjacent-sibling (`+`) combinators.
- Use HTML attributes to target inputs without adding new classes.
- Discover how pseudo-classes match states and structural relationships, while pseudo-elements target parts of elements or generated boxes.
- Preserve visible keyboard focus and keep meaningful content in HTML.

## Starting point

This starter is an **exact copy of the Exercise 01 solution** (`index.html` and `styles.css`). Open `exercises/02-combinators-attributes/index.html` and `styles.css`. The HTML already contains `.task-title`, `.task-list`, `.task-item`, `.submit-button`, the required task-name input, and an optional date input. Keep the HTML and accessible form structure unchanged.

## Tasks

1. In `index.html`, locate the `<ul class="task-list">` and its two `<li class="task-item">` children. In `styles.css`, add `.task-list > .task-item { padding: 0.45rem 0.65rem; }`.
2. Temporarily replace `>` with a space in that selector. Ask what would happen if a task item were inside a **nested** list. Return to `>` when you finish.
3. Under the Task Manager heading, find the introductory paragraph immediately after the `<h1 class="task-title">`. Style it with `.task-title + p { color: #56738c; }`. Confirm that other paragraphs are unaffected.
4. Find the required task-name `<input>`. Add `input[required] { border: 2px solid #317aa6; }`. Confirm that only required inputs receive this border.
5. Find the due-date input (`type="date"`). Give it a distinctive background with `input[type="date"] { background: #edf5ff; }`.
6. **Explore a state with `:hover`.** Locate the existing `.submit-button` rule. Add the following rule after it:

   ```css
   .submit-button:hover {
     background-color: #174978;
   }
   ```

   - Move the pointer over the button, then away. Does its HTML `class` attribute change?
   - In DevTools, select the button and force `:hover` using the element state controls (usually `:hov`). Toggle it off again.
   - Explain why a pseudo-class is useful here instead of a second permanent HTML class. Keep the rule.

7. **Explore keyboard focus with `:focus-visible`.** Add:

   ```css
   .submit-button:focus-visible {
     outline: 3px solid #efab36;
     outline-offset: 3px;
   }
   ```

   - Press Tab repeatedly until the Add task button receives focus. Move the pointer away from it. Can you still tell which element has focus?
   - Click the button or another control and compare the focus indication. The browser decides when a visible focus indicator is appropriate; mouse and keyboard results can differ.
   - Temporarily disable the new declarations in DevTools. Compare the browser's default focus indicator with your own. Re-enable them; never remove the focus indicator altogether.

8. **Explore structural selection with `:first-child`.** Temporarily add:

   ```css
   .task-list > .task-item:first-child {
     color: #a65a0b;
   }
   ```

   - Identify which item changes. Move the second `<li>` above the first in `index.html` and reload. Does the rule follow the original task or its new position?
   - Change `:first-child` to `:last-child` and predict the result. Restore the original list order and remove this experimental rule.
   - Note that these pseudo-classes match actual elements based on their position among siblings, not text fragments.

9. **Style a part of an element.** Find the introductory paragraph after `.task-title`. Temporarily add:

   ```css
   .task-title + p::first-letter {
     color: #a65a0b;
     font-size: 2em;
   }
   ```

   - Reload and compare the first letter with the rest of the paragraph. Did you have to add a `<span>` around that letter?
   - Replace `::first-letter` with `:first-child` and observe the result. The paragraph is not its parent's first child, because the heading comes before it.
   - Restore the original paragraph styling by deleting the temporary rule. Explain the difference between a structural pseudo-class and a pseudo-element.

10. **Generate decorative content with `::before` and `::after`.** Add:

    ```css
    .task-list > .task-item::before {
      content: "✓ ";
      color: #267b5a;
    }
    ```

    - Inspect a task item in DevTools. Look for the generated `::before` box. Compare with the actual `index.html`: no new HTML element was added.
    - Change `::before` to `::after` and observe where the symbol appears. Temporarily disable `content` and observe what disappears.
    - Restore `::before` and its `content` declaration. The checkmark is only a decorative demo marker, not an indication of task completion. Essential status must be communicated in HTML, not through generated CSS content alone.

11. **Review the outcome.** Inspect the required input, a task item and the submit button in DevTools. Identify a combinator, an attribute selector, a pseudo-class and a pseudo-element. Make sure the temporary rules from tasks 8 and 9 are removed and the original HTML order is restored.

## Check your result

- The direct list items are visibly spaced; the heading's next paragraph has its own color.
- Required and date inputs are distinguishable by appropriate attribute selectors.
- Hover and keyboard focus states work; the checkmark does not replace real task text.

## Questions to discuss

1. What changes when the direct-child combinator `>` is replaced with a descendant space?
2. Can `+` select a paragraph that comes **before** the heading?
3. Why is keyboard focus styling important even if hover styling already exists?
4. Why does `:first-child` follow the list position while `::first-letter` styles only part of a paragraph?
5. Why should generated content not be the only way to communicate a task status?

**Reference:** `../../solutions/02-combinators-attributes/`.
