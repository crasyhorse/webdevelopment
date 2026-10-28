---
layout: pageBar
class: content-offset
---

# CSS Units — Memory Game

<script setup lang="ts">
import memoryData from '../data/memory-css-units.json'
</script>

<div>
  <Memory :data="memoryData" />
</div>

<!--
- Sixteen face-down cards make eight matching pairs: a CSS term and its meaning.
- Reveal two cards at a time. Matching pairs disappear; non-matches flip back.
- Learners can use Enter or Space to operate cards with a keyboard.
- Review how px, pt, percentages, rem, em, vw, vh and max-width are referenced.
- Use Restart to reshuffle the game for another round.
-->
