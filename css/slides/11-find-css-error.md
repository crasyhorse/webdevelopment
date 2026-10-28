---
layout: pageBar
class: content-offset
---

# Find the CSS Error

<script setup lang="ts">
import errorCases from '../data/quiz-02-css-errors.json'
</script>

**Spot the broken declaration or syntax, then reveal the fix.**

<ErrorFinder :data="errorCases" />

<!--
- An interactive diagnosis activity, different from the earlier written quiz.
- Ask participants to read the snippet and select the line they think is wrong; let them discuss the reason before revealing the solution.
- All examples, solutions and explanations live in data/quiz-02-css-errors.json; no hint titles are shown to students.
- The four cases cover a misspelled property, missing colon, invalid length unit, and missing closing brace.
- Some syntax errors can affect following rules; avoid implying all invalid CSS is discarded line by line.
- Line buttons are keyboard-accessible, with visible focus indicators.
-->
