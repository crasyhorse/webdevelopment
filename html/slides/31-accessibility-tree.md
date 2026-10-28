---
layout: pageBar
class: content-offset
---

# The accessibility tree

- Browser-generated representation for **assistive technologies**.
- Derived from **DOM and HTML semantics**, supplemented by ARIA.
- Exposes **roles, names, descriptions, and states**.
- Not a one-to-one copy of the DOM; irrelevant or hidden nodes may be omitted.

<img src="/images/accessibility-tree.svg" alt="Comparison of a simplified DOM tree and accessibility tree. HTML elements become named navigation, link, region, heading, and button accessibility objects." class="block mx-auto" style="height: 310px; max-width: 100%; object-fit: contain;" />

<Button 
    url="http://localhost:5500/html/solutions/02-semantic-html/index.html"
    type="demo"
/>

<!--
- Introduce the pipeline: HTML source is parsed into the DOM; browsers derive accessibility information from DOM semantics, ARIA, visibility, and related information.
- The accessibility tree provides information to platform accessibility APIs used by screen readers and other assistive technologies; it is not the DOM itself.
- Read the left and right sides: nav is exposed as navigation, its aria-label becomes its accessible name, and link text provides the link name.
- In this conceptual example a section named by aria-labelledby is exposed as a region and its heading supplies the name; actual exposure can vary with browser and markup.
- A button gains its role and name from native HTML and its visible text, without needing role=button or aria-label.
- Not every DOM node becomes an individual accessibility object: neutral wrappers may be flattened and content hidden with the hidden attribute is generally omitted.
- Use Chrome DevTools Elements > Accessibility; inspect computed role and name, and toggle Show accessibility tree to explore the tree.
- Ask participants: Would replacing nav with a plain div preserve the navigation landmark? What changes after adding aria-label?
-->
