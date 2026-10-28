<script setup lang="ts">
import { computed, onBeforeUnmount, reactive, watch } from 'vue'

type PairId = string

interface MatchingPair {
  id: PairId
  left: string
  right: string
}

interface MatchingData {
  leftHeader: string
  rightHeader: string
  pairs: MatchingPair[]
  /** IDs in the initial order of the right column (each ID exactly once). */
  rightOrder: PairId[]
}

// Vue 3.5: destructured defineProps values remain reactive.
const { data, showAnswers = false, compact = false } = defineProps<{
  data: MatchingData
  showAnswers?: boolean
  compact?: boolean
}>()

// These values change together as one matching interaction progresses.
const state = reactive({
  selectedLeftId: null as PairId | null,
  wrongRightId: null as PairId | null,
  showingError: false,
  matchedIds: [] as PairId[],
})

let errorTimeout: ReturnType<typeof setTimeout> | undefined

const pairCount = computed(() => data.pairs.length)
const matchedCount = computed(() => showAnswers ? pairCount.value : state.matchedIds.length)
const isMatched = (id: PairId) => showAnswers || state.matchedIds.includes(id)
const pairById = computed(() => new Map(data.pairs.map(pair => [pair.id, pair])))

// Completed pairs snap to the matching left row; unmatched entries remain
// in their original shuffled order, filling the remaining available rows.
const rightRows = computed(() => {
  if (showAnswers) return data.pairs

  const rows: Array<MatchingPair | undefined> = Array(data.pairs.length).fill(undefined)
  for (const id of state.matchedIds) {
    const index = data.pairs.findIndex(pair => pair.id === id)
    if (index !== -1) rows[index] = pairById.value.get(id)
  }

  const unmatched = data.rightOrder
    .filter(id => !state.matchedIds.includes(id))
    .map(id => pairById.value.get(id))
    .filter((pair): pair is MatchingPair => pair !== undefined)

  let next = 0
  return rows.map(row => row ?? unmatched[next++]!).filter((pair): pair is MatchingPair => !!pair)
})

const feedback = computed(() => {
  if (showAnswers) return 'All answers are shown.'
  if (matchedCount.value === pairCount.value) return 'All pairs matched correctly.'
  if (state.showingError) return 'Not a match. Try again.'
  if (state.selectedLeftId !== null) return 'Now select the matching purpose on the right.'
  return 'Select a statement on the left, then its purpose on the right.'
})

function selectLeft(id: PairId) {
  if (showAnswers || state.showingError || isMatched(id)) return
  state.selectedLeftId = id
}

function selectRight(id: PairId) {
  if (showAnswers || state.showingError || isMatched(id) || state.selectedLeftId === null) return

  if (state.selectedLeftId === id) {
    state.matchedIds.push(id)
    state.selectedLeftId = null
    state.wrongRightId = null
    return
  }

  state.wrongRightId = id
  state.showingError = true
  errorTimeout = setTimeout(() => {
    state.showingError = false
    state.wrongRightId = null
    state.selectedLeftId = null
    errorTimeout = undefined
  }, 900)
}

function reset() {
  if (errorTimeout !== undefined) clearTimeout(errorTimeout)
  errorTimeout = undefined
  state.selectedLeftId = null
  state.wrongRightId = null
  state.showingError = false
  state.matchedIds = []
}

// Keep the component reusable when the instructor changes the data prop.
watch(() => data, reset)
onBeforeUnmount(() => {
  if (errorTimeout !== undefined) clearTimeout(errorTimeout)
})
</script>

<template>
  <div class="matching" :class="{ 'matching-compact': compact }">
    <div class="matching-grid">
      <div class="column-header">{{ data.leftHeader }}</div>
      <div class="column-header">{{ data.rightHeader }}</div>

      <template v-for="(pair, index) in data.pairs" :key="pair.id">
        <button
          type="button"
          class="match-item"
          :class="{
            'is-matched': isMatched(pair.id),
            'is-selected': state.selectedLeftId === pair.id && !state.showingError,
            'is-error': state.selectedLeftId === pair.id && state.showingError,
          }"
          :disabled="isMatched(pair.id) || state.showingError"
          :aria-pressed="state.selectedLeftId === pair.id || isMatched(pair.id)"
          @click="selectLeft(pair.id)"
        >
          <span class="number">{{ index + 1 }}.</span>
          <span>{{ pair.left }}</span>
        </button>

        <button
          v-if="rightRows[index]"
          type="button"
          class="match-item"
          :class="{
            'is-matched': isMatched(rightRows[index].id),
            'is-error': state.showingError && state.wrongRightId === rightRows[index].id,
          }"
          :disabled="isMatched(rightRows[index].id) || state.showingError || state.selectedLeftId === null"
          @click="selectRight(rightRows[index].id)"
        >
          {{ rightRows[index].right }}
        </button>
      </template>
    </div>

    <div class="matching-footer">
      <p class="matching-feedback" role="status" aria-live="polite">{{ feedback }}</p>
      <div class="matching-actions">
        <span class="matching-count">{{ matchedCount }} / {{ pairCount }} matched</span>
        <button v-if="!showAnswers" type="button" class="reset-button" @click="reset">
          Reset
        </button>
      </div>
    </div>
  </div>
</template>

<style scoped>
.matching { width: 100%; font-family: inherit; color: inherit; }
.matching-grid {
  display: grid;
  grid-template-columns: minmax(0, 1fr) minmax(0, 1.35fr);
  column-gap: 1.2rem;
  row-gap: 0.55rem;
}
.column-header { font-weight: 700; font-size: 1.15rem; padding: 0 0.55rem 0.25rem; }
.match-item {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  min-height: 3.15rem;
  width: 100%;
  padding: 0.55rem 0.75rem;
  border: 1.5px solid #b5bec9;
  border-radius: 0.55rem;
  background: #f7f9fc;
  color: #1e293b;
  font: inherit;
  font-size: 0.98rem;
  line-height: 1.2;
  text-align: left;
  cursor: pointer;
  transition: background-color 120ms ease, border-color 120ms ease;
}
.match-item .number { flex: 0 0 1.5rem; font-weight: 700; }
.match-item:hover:not(:disabled) { background: #e9f0fb; border-color: #6b96d2; }
.match-item:focus-visible, .reset-button:focus-visible { outline: 3px solid #306ec3; outline-offset: 2px; }
.match-item.is-selected, .match-item.is-matched { background: #dcf5e3; border-color: #58a775; }
.match-item.is-error { background: #fde0e0; border-color: #dc6868; }
.match-item:disabled { cursor: default; opacity: 1; }
.match-item:disabled:not(.is-matched):not(.is-error) { opacity: 0.78; }
.matching-footer {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 1rem;
  margin-top: 0.9rem;
  font-size: 0.85rem;
}
.matching-feedback { margin: 0; }
.matching-actions { display: flex; align-items: center; gap: 1rem; flex-shrink: 0; }
.matching-count { font-variant-numeric: tabular-nums; }
.reset-button {
  border: 1px solid #8795a8;
  border-radius: 0.4rem;
  padding: 0.35rem 0.75rem;
  background: transparent;
  color: inherit;
  cursor: pointer;
}
/* The 10-pair specificity review uses a denser, readable slide variant. */
.matching-compact .matching-grid { row-gap: .18rem; column-gap: .65rem; }
.matching-compact .column-header { font-size: .86rem; padding: 0 .3rem .15rem; }
.matching-compact .match-item {
  min-height: 2.15rem;
  padding: .22rem .42rem;
  border-radius: .4rem;
  font-size: .73rem;
  line-height: 1.15;
  gap: .28rem;
}
.matching-compact .match-item .number { flex-basis: 1.05rem; }
.matching-compact .matching-footer { margin-top: .4rem; font-size: .7rem; }
.matching-compact .matching-actions { gap: .4rem; }
.matching-compact .reset-button { font-size: .7rem; padding: .2rem .5rem; }
@media (prefers-reduced-motion: reduce) { .match-item { transition: none; } }
</style>
