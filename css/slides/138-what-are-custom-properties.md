---
layout: pageBar
class: content-offset
---

# What Are Custom Properties?

```css
:root {
  --color-primary: #125BD4;
}

.task-form__submit {
  background: var(--color-primary);
}

.task-card {
  border-color: var(--color-accent, #4C7186);
}
```

- A custom property is a **declaration whose name starts with `--`**.
- `var(--color-primary)` substitutes the value at use time; the second argument is a **fallback**.
- Global tokens live on `:root` — custom properties **inherit** to every element.

<!--
- `:root` matches `<html>`, the top of every element tree, so a token declared there is visible everywhere without further declarations.
- The fallback is used when the property is not defined at this element, or when its value is invalid at computed-value time — e.g. `--size: banana` in a length position. Without a fallback, `background: var(--missing)` falls back to the inherited or initial value, not to nothing.
- The browser stores the value without validating types like `background` does; any valid value works: colors, lengths, gradients, even whole shorthand lists.
- The name is yours: `--color-primary` communicates intent, `--blue1` does not. Keep the global set small — everything global is API, renaming breaks every use.
- Custom properties are ordinary declarations: when two rules declare the same token on one element, **origin, specificity and order** decide — no special precedence for `--*` names.
- Contrast with preprocessor variables (`$var` in Sass): those vanish at compile time; custom properties are live, computed values the browser resolves.
- DevTools: select `<html>`, Computed tab, filter for `--color-primary` — the winning rule is shown next to the value. Experiment: `--size: banana;` with `width: var(--size, 200px)` — the fallback wins.
-->
