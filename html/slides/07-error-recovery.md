---
layout: pageBar
class: content-offset
---

# Browsers recover from malformed HTML

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

<Button 
    url="http://localhost:5500/html/demo/invalid-paragraphs.html"
    type="demo"
/>

<!--
- This input omits closing paragraph tags intentionally.
- Opening a new paragraph implicitly closes the previous paragraph in this context because a p-tag is not allowed within a p-tag.
- The 2nd p-tag encloses the script-tag because the HTML standard allows "phrasing content" in a p-tag.
- The 2nd p-tag is closed when the body-tag closes.
- Prefer valid, explicit markup even though browsers recover from many mistakes.
-->
