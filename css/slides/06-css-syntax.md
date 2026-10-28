---
layout: pageBar
class: content-offset
---

# Syntax Essentials

<img src="/images/css-syntax-annotated.svg" alt="An annotated CSS rule with a comment, class selector, aligned property-colon-value declarations, whitespace and semicolons. Curved dashed arrows point to the correct source fragments." class="w-full mx-auto block" style="max-height: 40.5vh; object-fit: contain;" />

<p style="text-align: center;"><strong>A misspelled property is ignored; valid declarations can still work.</strong></p>

<!--
- A CSS rule has a selector followed by a declaration block enclosed in curly braces.
- The selector identifies matching elements; the browser applies valid declarations subject to the cascade.
- The example uses a class selector that matches elements with class="task-card". The class name describes a task card and can be reused for multiple cards.
- A declaration contains a property, a colon, a value, and usually a terminating semicolon.
- Multiple declarations can occur inside one set of curly braces; the final semicolon is optional but recommended.
- CSS comments use /* ... */ and cannot be nested.
- Whitespace and newlines usually help readability rather than changing declaration semantics. The arrow shows the whitespace between color and its colon.
- In the later error-finding activity, demonstrate that an unknown property such as colro is ignored while other valid declarations still apply.
- Do not imply that every CSS syntax error is isolated the same way: an unclosed block can affect following rules.
- Demonstrate a misspelled property in DevTools and inspect the result.
-->
