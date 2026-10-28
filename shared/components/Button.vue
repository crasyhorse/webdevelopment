<script setup lang="ts">
import demoIllustration from './Button/demo-comic-icon.svg'
import quizIllustration from './Button/questions-icon.svg'
import exerciseIllustration from './Button/exercise-button.svg'

defineProps<{
    url: string;
    type: "demo" | "quiz" | "exercise";
}>();
</script>

<template>
    <a
        :href="url"
        target="_blank"
        rel="noopener noreferrer"
        class="demo-button"
        title="Open live demo"
        style="border-bottom: none"
    >
        <img
            v-if="type === 'demo'"
            :src="demoIllustration"
            alt="Open demo"
        />
        <img
            v-if="type === 'quiz'"
            :src="quizIllustration"
            alt="Open quiz"
        />
        <img
            v-if="type === 'exercise'"
            :src="exerciseIllustration"
            alt="Open exercise"
        />
    </a>
</template>

<style scoped>
.demo-button {
    position: fixed;
    right: 2rem;
    bottom: 3.5rem;
    z-index: 9999;

    width: 120px;
    height: auto;

    transition: transform 0.2s ease;
}

.demo-button:hover {
    transform: scale(1.08) rotate(-2deg);
}
</style>
