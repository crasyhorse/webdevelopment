# Exercise 04 — Refactor the Task Manager using BEM

## Learning objectives

- Separate blocks, elements and modifiers in an existing page.
- Rename HTML classes and their matching CSS selectors without changing semantics.
- Preserve working form controls and accessible interaction states during a refactor.

## Starting point

Open `exercises/04-bem/index.html` and `styles.css`. These files are **exact copies of the Exercise 03 solution** and contain the pre-BEM Task Manager classes, such as `.task-title`, `.task-item` and `.submit-button`. Work on the **HTML and CSS together**. Do not rewrite the form or replace semantic elements with generic `<div>` elements.

## Tasks

1. In `index.html`, locate the main header, task list and form. Identify three blocks: `task-manager`, `task-list` and `task-form`. Add a `<div class="task-manager">` wrapper around the existing header and main content if it isn't present.
2. Change the main heading's class from `task-title` to `task-manager__title`. Give the paragraph directly under it the class `task-manager__intro`. Change the header and main container classes to `task-manager__header` and `task-manager__main`.
3. Keep `<ul class="task-list">` as a block. Change each list item from `task-item` to `task-list__item`.
4. Give the first task both `task-list__item` **and** `task-list__item--high-priority`. Give the second both `task-list__item` **and** `task-list__item--completed`. Keep the existing textual task descriptions, and add readable high-priority/completed wording if desired.
5. Give the `<form>` class `task-form`, the **New task** `<label>` class `task-form__label`, and the required task-name input class `task-form__input`.
6. Replace `submit-button` with `task-form__submit` on the Add Task button. Keep `type="submit"` and the input's `required` attribute.
7. Open `styles.css` and replace outdated class selectors with matching BEM selectors. Start from `.task-title`, `.task-item`, `.submit-button` and the existing hover/focus rules; check each renamed selector in DevTools.
8. Style `.task-list__item--high-priority` with a warm background/border and `.task-list__item--completed` with a calm background/border and optional line-through. Keep both modifiers alongside the base class.
9. Press **Tab** through the form to test the button's `:focus-visible` style. Submit the empty required task-name input and verify native validation still operates.
10. Search both edited files for the old classes `task-title`, `task-item` and `submit-button`. Remove stale selectors only once their replacement works; do not accidentally keep duplicate naming schemes.

## Check your result

- HTML and CSS use the same BEM block/element/modifier names.
- Both task variants are visibly distinct and retain their base task-item styling.
- Form labels, validation, focus indicators and navigation still work.

## Questions to discuss

1. Why is the form a block even though it sits inside Task Manager?
2. Why not name an element inside an element `.task-form__field__label`?
3. Why isn't `:focus-visible` a BEM modifier?

**Reference:** `../../solutions/04-bem/`.
