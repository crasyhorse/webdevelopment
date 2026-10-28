---
layout: pageBar
class: content-offset
---

# Choose elements for meaning

- **Semantic:** `<button>Save</button>` — an action
- **Non-semantic:** `<div class="button">Save</div>` — a generic container
- Native elements communicate **purpose** to browsers and assistive technology.
- Choose by **what the content does**, not by how it looks.

<!--
- HTML communicates meaning independently of styling; CSS controls appearance.
- div and span are valid neutral containers, but neither conveys button semantics.
- A native button is keyboard-focusable and supports Enter/Space activation by default.
- Giving a div button styling does not add its keyboard interaction or native semantics.
- Prefer elements with the behavior you need; avoid recreating browser features.
- Ask: Is this an action, a link to a destination, or simply a container?
- Semantic markup makes tests robust: Testing Library and Playwright can find a native button by role and accessible name instead of a CSS selector.
-->
