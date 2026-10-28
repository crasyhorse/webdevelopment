---
layout: pageBar
class: content-offset
---

# Positioning — Choose a Reference

<div style="display:grid;grid-template-columns:repeat(5,minmax(0,1fr));gap:12px;margin-top:30px;text-align:center;">
  <div style="min-width:0;">
    <p style="font-weight:700;font-size:1.15rem;"><code>static</code></p>
    <img src="/images/position-static.svg" alt="Keeps its normal place." style="display:block;width:100%;height:auto;margin:12px auto;" />
    <p style="font-weight:600;font-size:0.95rem;">Normal flow</p>
    <p style="font-size:0.85rem;line-height:1.3;margin-top:6px;">Keeps its normal place.</p>
  </div>
  <div style="min-width:0;">
    <p style="font-weight:700;font-size:1.15rem;"><code>relative</code></p>
    <img src="/images/position-relative.svg" alt="Moves; original space stays." style="display:block;width:100%;height:auto;margin:12px auto;" />
    <p style="font-weight:600;font-size:0.95rem;">Own position</p>
    <p style="font-size:0.85rem;line-height:1.3;margin-top:6px;">Moves; original space stays.</p>
  </div>
  <div style="min-width:0;">
    <p style="font-weight:700;font-size:1.15rem;"><code>absolute</code></p>
    <img src="/images/position-absolute.svg" alt="Leaves flow; uses an ancestor as reference." style="display:block;width:100%;height:auto;margin:12px auto;" />
    <p style="font-weight:600;font-size:0.95rem;">Containing block</p>
    <p style="font-size:0.85rem;line-height:1.3;margin-top:6px;">Leaves flow; uses an ancestor as reference.</p>
  </div>
  <div style="min-width:0;">
    <p style="font-weight:700;font-size:1.15rem;"><code>fixed</code></p>
    <img src="/images/position-fixed.svg" alt="Leaves flow; stays at viewport edge." style="display:block;width:100%;height:auto;margin:12px auto;" />
    <p style="font-weight:600;font-size:0.95rem;">Viewport</p>
    <p style="font-size:0.85rem;line-height:1.3;margin-top:6px;">Leaves flow; stays at viewport edge.</p>
  </div>
  <div style="min-width:0;">
    <p style="font-weight:700;font-size:1.15rem;"><code>sticky</code></p>
    <img src="/images/position-sticky.svg" alt="Scrolls, then sticks at an inset." style="display:block;width:100%;height:auto;margin:12px auto;" />
    <p style="font-weight:600;font-size:0.95rem;">Scroll container</p>
    <p style="font-size:0.85rem;line-height:1.3;margin-top:6px;">Scrolls, then sticks at an inset.</p>
  </div>
</div>

<!--
- The blue box is the element being positioned. Gray boxes represent other content.
- `static`: the default; `top`, `right`, `bottom`, and `left` do not offset it.
- `relative`: offsets move the box visually without changing its reserved space (dashed outline).
- `absolute`: removed from normal flow; often positioned relative to the nearest non-static ancestor. Other properties can also establish the containing block.
- `fixed`: removed from flow; usually positioned relative to the viewport. Transformed ancestors can change its containing block.
- `sticky`: remains in flow; here `top: 0` makes it stick at the top of the scrollport once it reaches that edge. Its containing block limits travel.
-->
