<script setup>
import { computed } from 'vue'
import learningOutcomesIllustration from './learning-outcomes.png'

const author = computed(() => {
  const authors = $slidev.configs.authors ?? []
  return authors.length > 0 ? Object.keys(authors[0])[0] : ''
})
</script>

<template>
  <div class="slidev-layout pageBar learning-outcomes">
    <div class="absolute-blue-box" aria-hidden="true"></div>
    <h1>Learning Outcomes</h1>

    <div class="learning-outcomes-body">
      <div class="learning-outcomes-content">
        <p class="learning-outcomes-intro">I will ...</p>
        <slot />
      </div>
      <img
        :src="learningOutcomesIllustration"
        alt=""
        aria-hidden="true"
        class="learning-outcomes-illustration"
      />
    </div>

    <BarBottom
      :title="$slidev.configs.preTitle"
      :author="author"
      :meeting="$slidev.configs.meeting"
    />
  </div>
</template>

<style scoped>
.absolute-blue-box {
  position: absolute;
  top: 4%;
  left: 0;
  width: 3.5%;
  height: 5.5rem;
  background: linear-gradient(45deg, #4ec4d4 15%, #146a8ce0 45%);
  background-size: 200% 200%;
  animation: gradient-animation 5s ease infinite;
}

.learning-outcomes {
  position: relative;
  display: flex;
  flex-direction: column;
}
.learning-outcomes-body {
  display: flex;
  align-items: center;
  flex: 1 1 auto;
  min-height: 0;
  gap: 1rem;
  margin: 2rem 1.75rem 3.8rem 5rem;
}
.learning-outcomes-content {
  flex: 1 1 auto;
  min-width: 0;
}
.learning-outcomes-intro {
  margin: 0 0 1rem;
  font-size: 1.5rem;
  line-height: 1.6;
}
.learning-outcomes-content :deep(ol) {
  margin: 0;
  padding-left: 2.4rem;
  font-size: 1.35rem;
  line-height: 1.6;
}
.learning-outcomes-content :deep(li + li) {
  margin-top: .25rem;
}
.learning-outcomes-illustration {
  display: block;
  flex: 0 0 25%;
  width: 25%;
  max-height: 18rem;
  object-fit: contain;
}
@keyframes gradient-animation {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}
</style>
