<script setup lang="ts">
import { computed, reactive, watch } from 'vue'

type QuizQuestion = {
  question: string
  answers: string[]
  correctIndex: number
  explanation: string
  code?: string
}

const props = defineProps<{ data: QuizQuestion[] }>()
const state = reactive({ index: 0, selected: -1, revealed: false })
const count = computed(() => props.data.length)
const current = computed(() => props.data[state.index])
const correct = computed(() => current.value && state.selected === current.value.correctIndex)
const finished = computed(() => state.index === count.value - 1 && state.revealed)
const valid = computed(() => props.data.every(q => q.answers.length >= 2 && q.answers.length <= 5 &&
  q.correctIndex >= 0 && q.correctIndex < q.answers.length))

function selectAnswer(index: number) {
  if (state.revealed) return
  state.selected = index
  state.revealed = true
}
function nextQuestion() {
  if (state.index < count.value - 1) state.index++
  state.selected = -1
  state.revealed = false
}
function restart() {
  state.index = 0
  state.selected = -1
  state.revealed = false
}
watch(() => props.data, restart)
</script>

<template>
  <section class="quiz" aria-label="Multiple choice quiz">
    <template v-if="valid && current">
      <div class="quiz-progress">Question {{ state.index + 1 }} of {{ count }}</div>
      <p class="quiz-question">{{ current.question }}</p>
      <pre v-if="current.code" class="quiz-code"><code>{{ current.code }}</code></pre>
      <div class="quiz-answers" role="group" :aria-label="`Answers for question ${state.index + 1}`">
        <button v-for="(answer, index) in current.answers" :key="index" type="button"
          class="quiz-answer"
          :class="{
            'quiz-answer-correct': state.revealed && index === current.correctIndex,
            'quiz-answer-incorrect': state.revealed && state.selected === index && !correct,
          }"
          :aria-pressed="state.selected === index"
          :disabled="state.revealed" @click="selectAnswer(index)">
          <span class="quiz-letter">{{ String.fromCharCode(65 + index) }}</span>
          <span>{{ answer }}</span>
        </button>
      </div>
      <div v-if="state.revealed" class="quiz-feedback" role="status" aria-live="polite">
        <strong>{{ correct ? 'Correct!' : 'Not quite.' }}</strong>
        {{ current.explanation }}
      </div>
      <div class="quiz-actions">
        <button v-if="finished" type="button" @click="restart">Start again</button>
        <button v-else type="button" :disabled="!state.revealed" @click="nextQuestion">Next question</button>
      </div>
    </template>
    <p v-else>The quiz data must include questions with 2–5 answers and a valid correctIndex.</p>
  </section>
</template>

<style scoped>
.quiz { width: min(100%, 920px); margin: 0 auto; font-family: inherit; color: #253b50; }
.quiz-progress { color: #567391; font-size: .83rem; margin-bottom: .35rem; }
.quiz-question { font-size: 1.12rem; font-weight: 650; line-height: 1.34; margin: 0 0 .48rem; }
.quiz-code { background: #f0f5fb; padding: .35rem .65rem; margin: 0 0 .5rem; border-radius: 7px; font-size: .85rem; line-height: 1.25; white-space: pre-wrap; }
.quiz-answers { display: grid; grid-template-columns: 1fr; gap: .35rem; }
.quiz-answer { display: flex; align-items: center; gap: .75rem; width: 100%; padding: .38rem .65rem;
  border-radius: 8px; border: 1.5px solid #cddced; background: #f8fbff; text-align: left;
  color: #253b50; font-size: .91rem; line-height: 1.32; cursor: pointer; }
.quiz-answer:hover:not(:disabled) { background: #e6f1fc; border-color: #7ba2ca; }
.quiz-answer:focus-visible { outline: 3px solid #1f68a6; outline-offset: 2px; }
.quiz-answer-correct { background: #ccefd9; border-color: #389d65; }
.quiz-answer-incorrect { background: #fbe0de; border-color: #d06b66; }
.quiz-letter { border: 1px solid #b6c8da; border-radius: 5px; width: 1.65rem; height: 1.65rem; flex-shrink: 0;
 display: grid; place-items: center; font-weight: 700; font-size: .8rem; }
.quiz-feedback { background: #f0f5fa; border-left: 3px solid #3682bc; padding: .48rem .65rem;
 font-size: .82rem; line-height: 1.35; margin-top: .45rem; }
.quiz-actions { display: flex; justify-content: flex-end; margin-top: .45rem; }
.quiz-actions button { color: white; background: #1d609a; border: none; border-radius: 7px;
 padding: .38rem .85rem; font-size: .87rem; cursor: pointer; }
.quiz-actions button:disabled { opacity: .45; cursor: not-allowed; }
.quiz-actions button:focus-visible { outline: 3px solid #f5aa32; outline-offset: 2px; }
</style>
