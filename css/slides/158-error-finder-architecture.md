---
layout: pageBar
class: content-offset
---

# Find the CSS Error

<script setup lang="ts">
import errorCases from '../data/quiz-21-css-architecture.json'
</script>

**Spot the broken architecture decision, then reveal the fix.**

<ErrorFinder :data="errorCases" />
