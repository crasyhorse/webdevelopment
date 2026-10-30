---
layout: pageBar
---

# Rendering performance: measure first

- Avoid unnecessary synchronous style/layout reads after writes.
- Prefer transforms or opacity for suitable animations.
- Use DevTools **Performance** to inspect layout and paint work.
- Optimize based on measurements, not assumptions.

<!--
- Repeated DOM writes followed by geometry reads can force synchronous layout.
- Browsers can batch work until JavaScript requests layout-dependent information.
- The critical rendering path affects initial display performance.
- Long main-thread work can delay frames and interactions.
- Performance advice is context-dependent; measuring is more useful than memorizing folklore.
-->
