---
layout: pageBar
class: content-offset
---

# Media Queries — Conditional CSS

<div>
  <img src="/images/media-query-breakpoint.svg" alt="Schematic comparison: at 600px the base one-column layout remains; at 900px the 768px minimum-width query changes it to two columns."
       class="block mx-auto w-full"
       style="max-height: 22vh; object-fit: contain;" />
</div>

```css
.dashboard { 
    display: grid; 
    gap: 8px; 
    grid-template-columns: 1fr;
}

@media (min-width: 768px) {
    .dashboard { 
        grid-template-columns: 1fr 3fr; 
    }
}
```

<style>
.slidev-code {
  font-size: 1rem !important;
  line-height: 1.25 !important;
}
</style>
