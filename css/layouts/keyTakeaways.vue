<script setup>
import { computed } from 'vue'

// Slidev injects $slidev; do not declare it again with useSlidev().
const author = computed(() => {
  const authors = $slidev.configs.authors ?? []
  return authors.length > 0 ? Object.keys(authors[0])[0] : ''
})
</script>

<template>
  <div class="slidev-layout pageBar key-takeaways">
    <div class="absolute-blue-box" aria-hidden="true"></div>

    <h1>Key Takeaways</h1>

    <div class="takeaways-content">
      <slot />
    </div>

    <img
      src="/images/summary.svg"
      alt="Tablet with a green exclamation mark"
      class="summary-illustration"
    />

    <BarBottom
      :title="$slidev.configs.preTitle"
      :author="author"
      :meeting="$slidev.configs.meeting"
    />
  </div>
</template>

<style scoped>
/* Match the blue accent of the workshop's HEP pageBar layouts. */
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

.key-takeaways {
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: stretch;
}

.key-takeaways > h1 {
  flex: none;
}

.takeaways-content {
  margin-top: 2.5rem;
  padding: 0 1.5rem 0 5rem;
  flex: 1 1 auto;
  min-height: 0;
}

.takeaways-content :deep(ul) {
  margin: 0;
  padding-left: 1.5rem;
  font-size: 1.3rem;
  line-height: 1.65;
}

.takeaways-content :deep(li + li) {
  margin-top: 0.35rem;
}

.summary-illustration {
  display: block;
  height: 200px;
  width: auto;
  max-width: 100%;
  object-fit: contain;
  align-self: center;
  flex: 0 0 auto;
  margin: 0 auto 3.8rem;
}

@keyframes gradient-animation {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}
</style>
