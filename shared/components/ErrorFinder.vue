<script setup lang="ts">
import { computed, reactive } from 'vue'

type ErrorCase = {
  lines: string[]
  badLine: number
  reason: string
  corrected: string[]
}

const props = defineProps<{ data: ErrorCase[] }>()
const state = reactive({ caseIndex: 0, selectedLine: -1, showSolution: false })
const total = computed(() => props.data.length)
const currentCase = computed(() => props.data[state.caseIndex])
const answeredCorrectly = computed(() =>
  currentCase.value != null && state.selectedLine === currentCase.value.badLine
)
const selectedWrong = computed(() =>
  state.selectedLine !== -1 && !answeredCorrectly.value
)
const completed = computed(() =>
  state.caseIndex === total.value - 1 && state.showSolution
)

function pickLine(line: number) {
  if (state.showSolution) return
  state.selectedLine = line
}
function next() {
  if (state.caseIndex < total.value - 1) state.caseIndex++
  state.selectedLine = -1
  state.showSolution = false
}
function reset() {
  state.caseIndex = 0
  state.selectedLine = -1
  state.showSolution = false
}
</script>

<template>
  <section class="error-finder" aria-label="Find the CSS error">
    <template v-if="currentCase">
      <div class="error-finder-heading">
        <span class="error-finder-progress">Case {{ state.caseIndex + 1 }} / {{ total }}</span>
        <span>Which line contains the error?</span>
      </div>
      <div class="error-finder-code" role="group" aria-label="Select the line containing the error">
        <button
          v-for="(line, index) in currentCase.lines"
          :key="`${state.caseIndex}-${index}`"
          type="button"
          class="error-finder-line"
          :class="{
            'error-finder-line-correct': state.selectedLine === index && answeredCorrectly,
            'error-finder-line-wrong': state.selectedLine === index && selectedWrong,
          }"
          :disabled="state.showSolution"
          :aria-label="`Line ${index + 1}: ${line}`"
          :aria-pressed="state.selectedLine === index"
          @click="pickLine(index)"
        ><span class="error-finder-line-number">{{ index + 1 }}</span><code>{{ line }}</code></button>
      </div>
      <div class="error-finder-feedback" role="status" aria-live="polite">
        <span v-if="state.selectedLine === -1">Select a line.</span>
        <span v-else-if="answeredCorrectly">Correct. Explain why, then reveal the fix.</span>
        <span v-else>Not that line. Try another one.</span>
      </div>
      <div v-if="state.showSolution" class="error-finder-solution">
        <strong>Explanation</strong>
        <p>{{ currentCase.reason }}</p>
        <pre><code>{{ currentCase.corrected.join('\n') }}</code></pre>
      </div>
      <div class="error-finder-actions">
        <button type="button" class="error-finder-button"
          :disabled="!answeredCorrectly || state.showSolution" @click="state.showSolution = true">Reveal fix</button>
        <button v-if="!completed" type="button"
          class="error-finder-button error-finder-button-secondary"
          :disabled="!state.showSolution" @click="next">Next case</button>
        <button v-else type="button"
          class="error-finder-button error-finder-button-secondary" @click="reset">Start again</button>
      </div>
    </template>
    <p v-else>No cases provided.</p>
  </section>
</template>

<style scoped>
.error-finder { width: min(100%, 790px); margin: 0 auto; font-family: inherit; color: #24394d; }
.error-finder-heading { display: flex; justify-content: space-between; align-items: baseline; gap: .7rem; font-size: .92rem; margin-bottom: .35rem; }
.error-finder-progress { color: #567391; font-size: .85rem; }
.error-finder-code { background: #f4f7fa; border: 1.5px solid #c9d8e8; border-radius: 9px; overflow: hidden; padding: .2rem 0; }
.error-finder-line { display: flex; align-items: center; gap: 1rem; width: 100%; text-align: left; background: transparent; border: 0; padding: .2rem .55rem; color: #23384c; cursor: pointer; font-size: .97rem; line-height: 1.3; }
.error-finder-line:hover:not(:disabled) { background: #e1edfb; }
.error-finder-line:focus-visible { outline: 3px solid #215ba2; outline-offset: -3px; }
.error-finder-line-correct { background: #c9eed7; }
.error-finder-line-wrong { background: #f9d3d3; }
.error-finder-line-number { color: #8293a7; width: 1.2rem; flex: 0 0 1.2rem; text-align: right; user-select: none; }
.error-finder-line code { white-space: pre; background: none; font-size: inherit; }
.error-finder-feedback { margin: .3rem 0; min-height: 1.2rem; font-size: .82rem; }
.error-finder-solution { border-left: 3px solid #389966; padding: .3rem .65rem; background: #f4faf7; font-size: .8rem; }
.error-finder-solution p { margin: .12rem 0 .25rem; }
.error-finder-solution pre { margin: .12rem 0 0; padding: .2rem .4rem; border-radius: 5px; background: #e6f2eb; white-space: pre-wrap; line-height: 1.2; }
.error-finder-actions { display: flex; gap: .5rem; margin-top: .4rem; }
.error-finder-button { background: #1b5f9e; border-radius: 7px; padding: .35rem .8rem; color: white; border: none; cursor: pointer; font-size: .83rem; }
.error-finder-button-secondary { background: #45647d; }
.error-finder-button:disabled { opacity: .45; cursor: not-allowed; }
.error-finder-button:focus-visible { outline: 3px solid #f5aa32; outline-offset: 3px; }
</style>
