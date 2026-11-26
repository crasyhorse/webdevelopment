# Questions & Answers — Accessibility & WAI-ARIA

## 1. What types of ARIA roles exist, and what are they used for?

### Answer

ARIA defines **six role categories**:

| Category | Purpose | Examples |
| --- | --- | --- |
| Landmark | Identify major regions of a page | `navigation`, `main`, `banner` |
| Widget | Identify interactive UI controls | `button`, `checkbox`, `tab` |
| Document structure | Describe the structure of content | `heading`, `list`, `article` |
| Live region | Identify areas with dynamic updates | `status`, `alert`, `log` |
| Window | Describe dialog-like subwindows | `dialog`, `alertdialog` |
| Abstract | Organize the ARIA role model; **not for use in HTML** | `widget`, `landmark` |

Native HTML elements often expose roles automatically:

```html
<nav>
    <a href="#tasks">Tasks</a>
</nav>

<main>
    <h1>Task Manager</h1>
</main>
```

Here `<nav>` normally exposes the `navigation` role, `<main>` the `main` role, and `<a href>` the `link` role. Adding equivalent explicit `role` attributes is usually unnecessary.

**Key distinction:** ARIA roles communicate semantics to accessibility APIs; they do not, by themselves, create interaction behavior.

---

## 2. What is an accessible name, and how is it determined?

### Answer

An **accessible name** is the short label exposed to assistive technologies to identify a particular element. The browser computes it using rules that depend on the element and its role. Common sources include visible element text, an associated `<label>`, an image's `alt` attribute, `aria-labelledby`, or `aria-label`.

```html
<button type="button">Add task</button>

<label for="task-name">New task</label>
<input id="task-name" name="task" type="text">
```

The button's accessible name comes from its text. The input's name comes from the associated `<label>`.

When visible label text exists elsewhere in the document, it can sometimes be referenced with `aria-labelledby`:

```html
<h2 id="tasks-heading">Tasks</h2>
<section aria-labelledby="tasks-heading">
    <!-- Task content -->
</section>
```

An `aria-label` supplies a name directly, often useful for an otherwise unlabeled icon button or for distinguishing navigation regions. It is not a substitute for a visible label when one can be provided.

**Key distinction:** Accessible names are not necessarily displayed visually, and not every element supports naming in the same way.

---

## 3. What is the difference between `aria-label` and `aria-describedby`?

### Answer

- **`aria-label`** supplies an accessible **name** as a string, when naming is supported for the element.
- **`aria-describedby`** references one or more elements whose text supplies an accessible **description**.

```html
<label for="task-name">New task</label>
<input id="task-name" name="task" type="text"
       aria-describedby="task-help">
<p id="task-help">Enter a short description of the task.</p>
```

The input's **name** is "New task" (from the `<label>`), while its **description** is "Enter a short description of the task." (from `aria-describedby`). An `aria-label` is not needed here.

**Key distinction:** A name identifies the control; a description gives additional context.

---

## 4. What is the difference between ARIA roles, properties, and states?

### Answer

- A **role** describes *what an element is*, such as `button` or `navigation`.
- A **property** communicates additional characteristics or relationships, such as `aria-describedby` or `aria-required`.
- A **state** represents a condition that may change, such as `aria-expanded`, `aria-checked`, or `aria-selected`.

For example, a button controlling collapsible content might use:

```html
<button type="button" aria-expanded="false" aria-controls="details">
    Show details
</button>
<div id="details" hidden>
    Additional task details
</div>
```

`aria-expanded="false"` says that the controlled content is currently collapsed. When the control expands that content, the application must update the DOM visibility and the attribute to `aria-expanded="true"`. **ARIA alone does not implement the behavior.**

For native form controls, prefer native attributes such as `required` where appropriate; they can provide both semantics and browser behavior.

---

## 5. Why should native HTML elements generally be preferred over custom elements with ARIA roles?

### Answer

Native HTML elements provide built-in **semantics, keyboard support, focus behavior**, and often associated browser functionality.

```html
<button type="button">Add task</button>
```

Compare this with:

```html
<div role="button">Add task</div>
```

The second example exposes button semantics but does **not** automatically become keyboard-focusable or respond to Space and Enter like a native button. Those behaviors would need to be implemented and maintained explicitly; merely adding `tabindex="0"` would not be enough.

Semantic HTML also makes tests easier to write using accessibility-based queries, for example Playwright's `getByRole('button', { name: 'Add task' })`.

**Key distinction:** Prefer native HTML first. Use ARIA to supplement semantics when necessary, not to recreate built-in behavior unnecessarily.

---

