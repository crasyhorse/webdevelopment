---
layout: pageBar
class: content-offset
---

# Native CSS Nesting

```css
.task-list__item {
  padding: .75rem 1rem;

  &:hover {
    background: var(--surface-hover);
  }

  .task-list__badge {
    position: absolute;
  }
}
```

- Nesting groups related rules — the block reads as one unit.
- `&` stands for the outer selector (`&:hover` → `.task-list__item:hover`).
- The trap: nesting **builds specificity** — `&:hover` is cheap, a nested element selector is a descendant chain.

<!--
- This is native CSS since 2023 — no preprocessor; the browser flattens it to the equivalent descendant selectors.
- Show the flattening in DevTools: the Styles pane displays the resolved selector, e.g. `.task-list__item .task-list__badge`.
- Nest for locality (states with &, small component internals); do not nest to scope, because that restarts the specificity spiral from slide 154.
- Rule of thumb from the flat-BEM mindset: if you can't tell which element a nested rule targets without counting ancestry, flatten it.
- Nesting and @layer combine: a nested rule inside @layer components still loses to any utilities-layer rule.
-->
