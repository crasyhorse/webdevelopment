---
layout: pageBar
class: content-offset
---

# Find the CSS Error

<script setup lang="ts">
import errorCases from '../data/quiz-20-token-errors.json'
</script>

**Spot the broken custom property usage, then reveal the fix.**

<ErrorFinder :data="errorCases" />
