---
layout: pageBarTwoCols
class: content-offset
---

# Why High-Specificity Selectors Are a Problem

::left::

**Existing rule — specificity `1-2-1`**

```css
#task-manager .task-list .task-card button {
  background-color: blue;
}
```

::right::

**Later override — specificity `0-1-0`**

```css
.button {
  background-color: red;
}
```

::below::

- Result: The button stays blue. The first selector has higher specificity, even though the second rule appears later.

- High specificity makes styles harder to override, reuse, and maintain.

<!--
- Assume both declarations apply to the same button and have equal cascade priority
- Compare selector specificity
- Why is this a problem?
  1. Difficult overrides: Simple class selectors cannot override more-specific rules just by appearing later.
  2. Specificity escalation: Developers add increasingly specific selectors or !important to force changes, making future overrides even harder.
  3. Tight coupling to HTML: Selectors such as .task-list .task-card button depend on the document structure. Changing the markup may break the styling.
  4. Reduced reusability: A component's appearance depends on where it is placed, rather than on its own classes.
  5. Harder maintenance: Developers must understand multiple competing selectors before safely changing a component.
-->
