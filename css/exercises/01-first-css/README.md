# Exercise 01 — Your first CSS rules

## Learning objectives

- Connect an external stylesheet to a semantic HTML page.
- Use element and class selectors for a readable Task Manager.
- Compare hex, `rgb()`, and `hsl()` color values and inspect the results in DevTools.
- Recognize an invalid CSS declaration without losing the rest of the stylesheet.

## Starting point

Open `exercises/01-first-css/index.html` in your browser. The file already contains a **Task Manager** heading, a description, a task list, a form and a button. Edit `styles.css`; do not change the semantic markup or form labels. The starter stylesheet contains only comments.

## Tasks

1. Open `index.html`. In `<head>`, find `<link rel="stylesheet" href="styles.css">`. Confirm that it refers to the CSS file in the **same folder**. Temporarily change the `href` to a nonexistent name, reload and observe the result; then restore it.
2. In `styles.css`, create a `body` rule. Set `background-color: #f2f6fb`, `font-family: Arial, sans-serif` and `color: #263c55`. Reload and identify the areas affected.
3. Find `<h1 class="task-title">` in `index.html`. Add a `.task-title` rule in `styles.css` with `color: #245f9f`. Explain why the dot belongs in the CSS selector but **not** in the HTML class attribute.
4. Find the `<button class="submit-button">` element. Add a `.submit-button` rule with `background-color: #245f9f` and `color: white`. Check the contrast with its background.
5. Use a **type selector** such as `h2` to style the Tasks heading. Compare this with the class selector: how many elements could each rule match?
6. Add a comment immediately before your button rule explaining what that rule does, using `/* ... */` syntax.
7. Change the body background to `rgb(242, 246, 251)`, then to a suitable `hsl(...)` value. Check that these alternative notations can create similar visual results. Restore a readable color afterward.
8. Open DevTools, select the Task Manager `<h1>` and find its winning `color` declaration in the Styles pane. Locate the corresponding rule in `styles.css`.
9. Deliberately misspell `background-color` as `backgroun-color`, reload, and observe what is ignored. Restore the correct property name.

## Check your result

- The external stylesheet is loaded and the background changes.
- The heading and button have visible, legible colors.
- You can point to one type selector, two class selectors and one CSS comment.
- DevTools identifies the source of the applied heading color.

## Questions to discuss

1. Why is an external stylesheet convenient for a growing project?
2. What happens to other valid declarations when one declaration has a typo?
3. Why do we use descriptive class names rather than names such as `.blue-text`?

**Reference:** `../../solutions/01-first-css/index.html` and `styles.css`.
