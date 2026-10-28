# Demo 04 — Cascade in DevTools

Open `index.html` using a local HTTP server rooted at the repository. Open DevTools **Styles** for the task heading.

1. Two ordinary `.card-title` rules have the same specificity (0-1-0). The later `teal` value wins.
2. Uncomment Experiment A in `styles.css`: the matching `#important-task .card-title` has weight 1-1-0, so dark orange wins over both ordinary class rules.
3. Uncomment Experiment B as well: the ordinary class specificity is lower, but `!important` makes the crimson declaration win **before** specificity is evaluated.
4. Inspect which declarations are applied and which are crossed out in DevTools. Disable the experiments afterward.

Assumes one author origin, unlayered styles, and no transitions. Important origin/layer ordering is introduced conceptually in the slides.
