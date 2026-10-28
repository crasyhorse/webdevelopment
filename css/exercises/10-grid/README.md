# Exercise 10 — Grid

## Learning objectives

- Add dashboard panels in `index.html`
- Create the named grid areas
- Add a wide-screen layout
- Verify the entire Task Manager

## Starting point

Open `index.html` in your browser and `styles.css` in your editor. These files and the attachment SVG are identical to the previous reference solution. Keep all previous work.

## Tasks

1. **Add dashboard panels in `index.html`.**

   Inside `.task-manager__main`, insert the sidebar before the existing tasks section and the statistics panel after it. Preserve the task list, attachment and form. The numbers are static sample data, not a JavaScript feature.

   ```html
   <aside class="task-manager__sidebar" aria-label="Task shortcuts">
     <h2>Shortcuts</h2>
     <a href="#tasks">All tasks</a><br />
     <a href="#task-name">New task</a>
   </aside>
   ```

   ```html
   <aside class="task-manager__stats" aria-label="Task statistics">
     <h2>Statistics</h2>
     <p>8 sample tasks</p><p>1 completed</p><p>1 high priority</p>
   </aside>
   ```

2. **Create the named grid areas.**

   Append these rules to `styles.css`. Start with one column and inspect the grid overlay. Match each area name to a direct child.

   ```css
   .task-manager { max-width: 76rem; }
   .task-manager__header { width: 100%; margin-bottom: 1rem; }
   .task-manager__main { display: grid; grid-template-columns: minmax(0, 1fr); grid-template-areas: "nav" "tasks" "stats"; gap: 1rem; min-width: 0; }
   .task-manager__sidebar { grid-area: nav; }
   #tasks { grid-area: tasks; min-width: 0; }
   .task-manager__stats { grid-area: stats; }
   .task-manager__sidebar, .task-manager__stats { padding: .75rem; background: #edf5ff; border-radius: .5rem; }
   ```

3. **Add a wide-screen layout.**

   Replace the column and area declarations with the following rules. Compare `1fr 3fr 1fr` with `repeat(3, minmax(0, 1fr))`, then restore the three unequal tracks.

   ```css
   .task-manager__main {
     grid-template-columns: minmax(0, 1fr) minmax(0, 3fr) minmax(0, 1fr);
     grid-template-areas: "nav tasks stats";
     align-items: start;
   }
   ```

4. **Verify the entire Task Manager.**

   At a wide desktop size, ensure the list still scrolls, the preview image fits, form labels remain associated and controls can be reached with Tab. The sidebar, tasks and stats must follow DOM order. Flexbox still handles the nested action group; Grid handles the dashboard. Then resize to 360px and try a short viewport. Observe the cramped columns and sticky header; do not solve these limitations yet. Part VI will address them.

## Reference solution

See `../../solutions/10-grid/`. Compare the final HTML and CSS; do not replace your work until you have tried the experiments.
