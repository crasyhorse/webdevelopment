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
