---
layout: pageBar
class: content-offset
---

# The One-Big-Stylesheet Problem

<div>
  <img src="/images/css-file-structure.svg" alt="Left: one long stylesheet with tangled arrows between rules. Right: the same rules organized into a small file tree by block." class="block mx-auto w-full" style="max-height: 50vh; object-fit: contain;" />
</div>

<!--
- Open the Task Manager styles.css from the students' own work: 220+ lines, every exercise appended below the last, the same block styled in six places.
- The symptoms: finding a rule takes scrolling, changing one value means searching for copies, and the comment "Exercise 11 — Media queries" is the only structure left.
- Ask: where would you add a style for a new task-card component? Any answer is defensible — that is the problem.
- Announce the goal: structure that makes the right place obvious — file boundaries, block boundaries, and explicit cascade order.
- The right side of the illustration previews the target: one file per block plus tokens and base — the structure built in Exercise 17.
-->
