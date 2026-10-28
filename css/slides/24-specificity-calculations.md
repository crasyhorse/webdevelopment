---
layout: pageBar
class: content-offset
---

# Calculating Specificity

<div class="grid grid-cols-2 gap-10">
<div>

```css
button { color: blue; }

.submit-button {
  color: green;
}

button { color: red; }
```

</div>
<div>

| Selector | Weight |
|---|---|
| `button` | 0-0-1 |
| `.submit-button` | **0-1-0** |
| `button` | 0-0-1 |

**Winner: green**

</div>
</div>

**The more specific class rule wins despite appearing before the final `button` rule.**

<Button url="http://localhost:5500/css/demo/05-specificity/index.html" type="demo" />

<!--
- Use the demo icon to open the Task Manager specificity demo; inspect crossed-out declarations and computed values in DevTools.
- Calculate weights without mixing this with cascade origin or !important examples yet.
- Same origin, importance, and layer are assumed.
- Source order only settles ties after higher cascade criteria and specificity.
- Simple class selectors yield predictable specificity.
- Show :where(.submit-button) has 0-0-0 as a stretch topic; optional for beginners.
- Invite someone to explain why red does not win.
-->
