---
layout: pageBar
class: content-offset
---

# Taking Control with `@layer`

```css
@layer reset, base, components, utilities;

@layer base {
  h2 { color: var(--text); }
}

@layer components {
  .task-manager__title { color: var(--heading); }
}
```

- Declare the layer **order once**; inside layers, the normal cascade still applies.
- A rule in a **later layer wins** — even against a higher-specificity rule in an earlier layer.
- **Unlayered** styles beat all layered styles; `!important` flips the order again.

<!--
- The layer list at the top is the whole architecture in one line: reset < base < components < utilities.
- Resolve the spiral from the previous slide: the ID rule can move to an earlier layer, the component rule stays plain — no selector arms race.
- !important reverses layer order: an important declaration in an earlier layer beats one in a later layer — a useful escape hatch, still a smell.
- Connect to Part VIII: tokens belong in base (or their own layer); third-party CSS can be wrapped in a layer to keep it below your components.
- DevTools: the Styles pane labels each rule with its layer name — the origin of every decision becomes visible.
- Support note: @layer works in all current evergreen browsers; verify before production use on older targets.
-->
