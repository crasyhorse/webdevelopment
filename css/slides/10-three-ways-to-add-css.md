---
layout: pageBar
class: content-offset
---

# Demo — Three Ways to Add CSS

1. Add an **external** `styles.css` using `<link>`.
2. Add a conflicting rule in an internal `<style>` element.
3. Add an inline `style` attribute to the same heading.
4. Use **DevTools → Styles** to inspect which rule wins.

<Button url="http://localhost:5500/css/demo/03-three-ways-to-add-css/index.html" type="demo" />

<!--
- Run a local web server at the repository root (e.g. VS Code Live Server) and open css/demo/03-three-ways-to-add-css/index.html.
- First observe the external rule. The internal rule uses the same selector and appears later, so it wins by source order when comparable. Then add inline style="color: ..." to the target heading; it normally wins over ordinary author stylesheet declarations.
- Remove the inline style to expose the internal rule; remove the internal declaration to expose the external rule.
- In DevTools, point out crossed-out competing declarations and the applied/computed color.
- Do not teach that inline always wins: !important declarations and the cascade origin/importance rules can change that, and layers are covered later.
- Explain that an external file must be linked with a correct relative URL.
-->
