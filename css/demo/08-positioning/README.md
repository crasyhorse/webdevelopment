# Demo 08 — Positioning

## Starting point

Open `http://localhost:5500/css/demo/08-positioning/index.html` (or open the local HTML file). Open `styles.css` and DevTools.

```html
<article class="card"><span class="badge">Priority</span><p>Review the pull request</p></article><p>Next task</p>
```

```css
.card { position: relative; padding: 2.5rem 1rem 1rem; }
.badge { position: absolute; top: .5rem; right: .5rem; background: peachpuff; }
```

## Experiments

### 1. Remove position: relative from .card

- Ask learners to predict the result.
- Make the described change in `styles.css`.
- Inspect the badge in DevTools; its containing block changes.
- Inspect the computed styles and resize the browser before the next step.

### 2. Restore position: relative; change badge to position: relative

- Ask learners to predict the result.
- Make the described change in `styles.css`.
- The badge returns to normal flow, and its insets offset it.
- Inspect the computed styles and resize the browser before the next step.

### 3. Restore absolute

- Ask learners to predict the result.
- Make the described change in `styles.css`.
- Explain why padding reserves room.
- Inspect the computed styles and resize the browser before the next step.

## Finish

Restore the original declarations shown above. This isolated example explains one concept before learners apply it to the continuous Task Manager.
