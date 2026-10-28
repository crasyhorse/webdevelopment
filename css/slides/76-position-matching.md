---
layout: pageBar
class: content-offset
---

# Quiz — Match the Positioning Values

<script setup lang="ts">
import matchingData from '../data/quiz-08-positioning-matching.json'
</script>

<div>
  <Matching :data="matchingData" :compact="true" />
</div>

<!--
- Ask attendees to match each `position` value to its behavior.
- Discuss why `relative` preserves its space while `absolute` leaves normal flow.
- For `fixed`, a transformed ancestor can establish a different containing block. For `sticky`, an inset and available travel are necessary.
-->
