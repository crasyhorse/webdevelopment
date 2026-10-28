# Demo 09 — Flexbox

## Starting point

Open `http://localhost:5500/css/demo/09-flexbox/index.html` (or open the local HTML file). Open `styles.css` and DevTools.

```html
<div class="actions"><button>Small</button><button>Medium</button><button>Large</button></div>
```

```css
.actions { display: flex; gap: .75rem; align-items: center; flex-wrap: wrap; }
.actions button { flex: 1 1 8rem; }
```

## Experiments

### 1. Change flex-direction to column

- Ask learners to predict the result.
- Make the described change in `styles.css`.
- The main axis changes; restore row.
- Inspect the computed styles and resize the browser before the next step.

### 2. Change justify-content to space-between and flex to 0 0 8rem

- Ask learners to predict the result.
- Make the described change in `styles.css`.
- Free space appears between buttons; resize to see wrapping.
- Inspect the computed styles and resize the browser before the next step.

### 3. Restore flex: 1 1 8rem

- Ask learners to predict the result.
- Make the described change in `styles.css`.
- Buttons expand to fill available space.
- Inspect the computed styles and resize the browser before the next step.

## Finish

Restore the original declarations shown above. This isolated example explains one concept before learners apply it to the continuous Task Manager.
