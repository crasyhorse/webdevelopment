<script setup lang="ts">
import ExerciseImplementation from './exercise/ExerciseLayout.vue'

// Each slide declares only the README link as layout metadata.
// The layout itself owns the exercise picture and button.
defineProps<{ exerciseUrl: string }>()
</script>

<template>
  <ExerciseImplementation :exercise-url="exerciseUrl">
    <slot />
  </ExerciseImplementation>
</template>
