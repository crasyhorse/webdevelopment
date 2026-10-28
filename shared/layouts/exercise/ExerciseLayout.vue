<script setup lang="ts">
import { computed } from 'vue'
import exerciseIllustration from './exercise.png'
import Button from '../../components/Button.vue'

// Slidev forwards exerciseUrl from slide frontmatter into this layout.
defineProps<{ exerciseUrl: string }>()

const author = computed(() => {
  const authors = $slidev.configs.authors ?? []
  return authors.length > 0 ? Object.keys(authors[0])[0] : ''
})
</script>

<template>
  <div class="slidev-layout pageBar exercise-slide">
    <div class="absolute-blue-box" aria-hidden="true"></div>

    <!-- The slide supplies only its heading and list of tasks. -->
    <main class="exercise-main">
      <slot />
    </main>

    <!-- Same lower composition as Key Takeaways: centered illustration and a separate exercise link. -->
    <img :src="exerciseIllustration" alt="Hands-on coding exercise" class="exercise-illustration" />
    <Button :url="exerciseUrl" type="exercise" />

    <BarBottom
      :title="$slidev.configs.preTitle"
      :author="author"
      :meeting="$slidev.configs.meeting"
    />
  </div>
</template>

<style scoped>
/* Match the comfortable vertical rhythm of KeyTakeawaysLayout. */
.exercise-slide {
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: stretch;
}

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

/* The slot owns only the h1 and ordered/unordered task list. */
.exercise-main {
  display: flex;
  flex-direction: column;
  flex: 1 1 auto;
  min-height: 0;
  width: 100%;
  min-width: 0;
}

.exercise-main :deep(h1) {
  flex: none;
  margin-top: 0 !important;
  margin-bottom: 0 !important;
}

.exercise-main :deep(ol),
.exercise-main :deep(ul) {
  margin: 2.5rem 0 0 !important;
  padding: 0 1.5rem 0 6.5rem;
  font-size: 1.3rem;
  line-height: 1.65;
}

.exercise-main :deep(li) {
  padding-left: .25rem;
  margin-bottom: .35rem;
}

/* Behave like the tablet image on the Key Takeaways layout. */
.exercise-illustration {
  display: block;
  height: 200px;
  width: auto;
  max-width: 48%;
  object-fit: contain;
  align-self: center;
  flex: 0 0 auto;
  margin: 0 auto 3.8rem;
  pointer-events: none;
}

@keyframes gradient-animation {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}
</style>
