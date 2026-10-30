<template>
    <a
        :href="url"
        target="_blank"
        rel="noopener noreferrer"
        class="demo-button"
        title="Open live demo"
        style="border-bottom: none"
    >
        <img src="/images/demo-comic-icon.svg" alt="Open demo" />
    </a>
</template>

<script setup lang="ts">
defineProps<{
    url: string;
}>();
</script>

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
