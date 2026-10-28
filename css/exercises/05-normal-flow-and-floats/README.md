# Exercise 05 — Normal Flow & Floats

**Starting point:** Open the supplied Task Manager task card in your browser. Edit `styles.css` only.

**Time:** About 10 minutes.

## Tasks

1. Observe the initial **normal flow**: the icon, task description, and action button are placed in document order.
2. Make `.task-card__icon` **float left**. Add `12px` of space between the icon and the text.
3. Make `.task-card__action` start **below the floated icon** by applying `clear: both`.
4. Change the icon to `float: right`, move the margin to the opposite side, and check that `clear: both` still works. Return to `float: left` when finished.

## Explore

- Why does the paragraph appear beside the floated icon?
- What changes when you temporarily remove `clear: both`?
- Why does `clear: both` work for either float direction?

**Reference solution:** `../../solutions/05-normal-flow-and-floats/`.

**Reminder:** This exercise is about floats and normal flow; do not use Flexbox or Grid.
