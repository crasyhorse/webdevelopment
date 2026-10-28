---
layout: pageBar
class: content-offset
---

# CSS Inheritance

<img
  src="/images/inheritance-diagram.svg"
  alt="CSS inheritance diagram showing a parent .task-manager with color: navy and a gray border. Arrows point to three child elements: an h2 that inherits the navy text color, a p with an explicitly declared teal text color, and a button that does not inherit the parent's border."
  class="w-full mx-auto block" style="max-height: 39vh; object-fit: contain;"
/>

<p style="text-align: center;"><strong>Inherited properties can flow down the DOM tree; direct declarations take precedence.</strong></p>

<!--
- Conceptual HTML: a task-manager parent contains a heading, a paragraph and a button. A browser may give buttons UA default color, so their actual computed color need not inherit automatically.
- Many text-related properties, e.g. color and font-family, are inherited when no direct specified value is set on the child.
- Border, background, padding and margin are not normally inherited. Some form controls have browser default styles.
-->
