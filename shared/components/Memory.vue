<script setup lang="ts">
import { computed, onBeforeUnmount, onMounted, ref, watch } from 'vue'

interface MemoryPair { id: string; term: string; definition: string }
interface MemoryData { title?: string; pairs: MemoryPair[] }
interface Card { id: string; pairId: string; text: string }

const props = defineProps<{ data: MemoryData }>()
const cards = ref<Card[]>([])
const openIds = ref<string[]>([])
const matchedPairIds = ref<string[]>([])
const busy = ref(false)
let flipTimeout: ReturnType<typeof setTimeout> | undefined
const complete = computed(() => props.data.pairs.length > 0 && matchedPairIds.value.length === props.data.pairs.length)
const matchedCount = computed(() => matchedPairIds.value.length)
const status = computed(() => {
  if (complete.value) return 'All pairs found. Well done!'
  if (busy.value) return 'Checking the two cards…'
  if (openIds.value.length === 1) return 'Choose a second card.'
  return 'Turn over two cards and find matching terms and definitions.'
})

function clearTimer() {
  if (flipTimeout !== undefined) clearTimeout(flipTimeout)
  flipTimeout = undefined
}
function shuffle<T>(values: T[]): T[] {
  const shuffled = [...values]
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1))
    ;[shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]]
  }
  return shuffled
}
function restart() {
  clearTimer()
  openIds.value = []
  matchedPairIds.value = []
  busy.value = false
  const all: Card[] = props.data.pairs.flatMap(p => [
    { id: `${p.id}-term`, pairId: p.id, text: p.term },
    { id: `${p.id}-definition`, pairId: p.id, text: p.definition },
  ])
  cards.value = shuffle(all)
}
function isMatched(card: Card): boolean { return matchedPairIds.value.includes(card.pairId) }
function isFaceUp(card: Card): boolean { return openIds.value.includes(card.id) }
function choose(card: Card) {
  if (busy.value || isMatched(card) || isFaceUp(card) || openIds.value.length >= 2) return
  openIds.value = [...openIds.value, card.id]
  if (openIds.value.length !== 2) return
  busy.value = true
  const first = cards.value.find(c => c.id === openIds.value[0])!
  const correct = first.pairId === card.pairId
  flipTimeout = setTimeout(() => {
    if (correct) matchedPairIds.value = [...matchedPairIds.value, first.pairId]
    openIds.value = []
    busy.value = false
    flipTimeout = undefined
  }, correct ? 600 : 1100)
}
watch(() => props.data, restart, { deep: true })
onMounted(restart)
onBeforeUnmount(clearTimer)
</script>

<template>
  <section class="memory-game" aria-label="CSS units memory game">
    <div class="memory-meta">
      <p class="memory-instruction" role="status" aria-live="polite">{{ status }}</p>
      <div class="memory-controls">
        <span class="memory-score">{{ matchedCount }} / {{ props.data.pairs.length }} pairs</span>
        <button type="button" class="memory-reset" @click="restart">Restart</button>
      </div>
    </div>
    <div class="memory-grid" aria-label="Sixteen memory cards">
      <div v-for="(card, index) in cards" :key="card.id" class="memory-slot">
        <button
          v-if="!isMatched(card)"
          type="button"
          class="memory-card"
          :class="{ 'is-revealed': isFaceUp(card) }"
          :disabled="busy || isFaceUp(card)"
          :aria-label="isFaceUp(card) ? `Card ${index + 1}: ${card.text}` : `Face-down card ${index + 1}`"
          :aria-pressed="isFaceUp(card)"
          @click="choose(card)"
        >
          <span class="memory-card-inner">
            <span class="memory-card-back" aria-hidden="true">?</span>
            <span class="memory-card-front" aria-hidden="true">{{ card.text }}</span>
          </span>
        </button>
      </div>
    </div>
    <p v-if="complete" class="memory-complete" role="status">You matched all eight pairs. Choose Restart to play again.</p>
  </section>
</template>

<style scoped>
.memory-game { width: 100%; max-width: 920px; margin: 0 auto; color: #20334a; }
.memory-meta { display: flex; align-items: center; justify-content: space-between; gap: 1rem; margin-bottom: .6rem; }
.memory-instruction { margin: 0; font-size: .88rem; line-height: 1.25; }
.memory-controls { display: flex; align-items: center; gap: .7rem; flex-shrink: 0; }
.memory-score { font-size: .87rem; font-variant-numeric: tabular-nums; font-weight: 700; }
.memory-reset { padding: .25rem .65rem; border: 1px solid #6384ad; border-radius: .4rem; color: #1d4877; background: white; font: inherit; font-size: .83rem; cursor: pointer; }
.memory-reset:hover { background: #edf3fc; }
.memory-reset:focus-visible, .memory-card:focus-visible { outline: 3px solid #1b65bb; outline-offset: 2px; }
.memory-grid { display: grid; grid-template-columns: repeat(4, minmax(0, 1fr)); gap: .55rem; }
.memory-slot { height: clamp(78px, 15vh, 118px); }
.memory-card { width: 100%; height: 100%; padding: 0; border: 0; border-radius: .55rem; background: transparent; perspective: 900px; cursor: pointer; }
.memory-card-inner { position: relative; display: block; width: 100%; height: 100%; transform-style: preserve-3d; transition: transform .38s ease; }
.memory-card.is-revealed .memory-card-inner { transform: rotateY(180deg); }
.memory-card-back, .memory-card-front { position: absolute; inset: 0; display: flex; justify-content: center; align-items: center; backface-visibility: hidden; border-radius: .55rem; padding: .4rem; text-align: center; }
.memory-card-back { background: #24568e; border: 2px solid #173e68; color: white; font: 700 2.1rem Arial, sans-serif; box-shadow: 0 2px 4px #1f334b24; }
.memory-card-front { background: #ecf5ff; border: 2px solid #618cbb; color: #143a65; transform: rotateY(180deg); font-size: clamp(.72rem, 1.3vw, .98rem); font-weight: 650; line-height: 1.15; overflow-wrap: anywhere; }
.memory-complete { text-align: center; margin: .6rem 0 0; font-weight: 700; color: #286244; }
@media (max-width: 580px) { .memory-meta { align-items: flex-start; flex-direction: column; gap: .3rem; } .memory-grid { gap: .28rem; } .memory-card-front { font-size: .68rem; } }
@media (prefers-reduced-motion: reduce) { .memory-card-inner { transition: none; } }
</style>
