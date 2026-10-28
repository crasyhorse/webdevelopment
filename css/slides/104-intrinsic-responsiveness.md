---
layout: pageBar
class: content-offset
---

# Responsive Without Media Queries

- Media queries change rules when conditions match.
- Intrinsic layouts adapt using available space and content constraints.
- Flexbox can wrap items; Grid can determine the number of tracks.
- Prefer automatic layout when explicit breakpoints are unnecessary.

<div class="mt-5"></div>
<div>
  <img src="/images/responsive-task-manager.png" alt="Three Task Manager layouts adapting from wide to medium to narrow screens, with miniature builders measuring the available width." class="w-full mx-auto block" style="max-height: 30vh; object-fit: contain;" />
</div>

<!--
- Media queries are not necessary for every responsive layout. CSS already provides mechanisms that adapt automatically to available space.
- Use the illustration to explain how the same task cards automatically rearrange into fewer columns as the available space decreases.
- Intrinsic responsiveness means that layouts adapt based on available space, content dimensions and sizing constraints rather than explicitly defined breakpoints.
- Prefer intrinsic layouts whenever possible because they require fewer explicit breakpoints and can adapt to different container sizes without additional rules.
- Media queries remain useful when more fundamental changes to the layout or presentation are required.
- Combining intrinsic layouts with media queries often results in more flexible and maintainable CSS.
- Demonstrate these mechanisms and their limitations in the following demo.
-->