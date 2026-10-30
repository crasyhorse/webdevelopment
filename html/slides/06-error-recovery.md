---
layout: pageBar
---

# Browsers recover from malformed HTML

<div class="mt-20"></div>

**Source HTML**

```html
<p>First paragraph
<p>Second paragraph
```

**Resulting DOM (simplified)**

```html
<p>First paragraph</p>
<p>Second paragraph</p>
```

<DemoButton 
    url="http://localhost:5500/html/demo/invalid-paragraphs.html"
/>

<!--
- This input omits closing paragraph tags intentionally; it is the example, not a recommended style.
- Opening a new paragraph implicitly closes the previous paragraph in this context.
- The resulting DOM therefore contains two sibling paragraph elements.
- Error recovery follows specified parsing rules and is consistent enough to be tested.
- Source inspection alone can be misleading when investigating unexpected DOM structure.
- Prefer valid, explicit markup even though browsers recover from many mistakes.
-->
