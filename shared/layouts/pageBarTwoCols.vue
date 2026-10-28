
<script setup>
import { computed } from "vue";

const author = computed(() => {
    const authors = $slidev.configs.authors ?? [];

    return authors.length > 0
        ? Object.keys(authors[0])[0]
        : "";
});
</script>

<template>
    <div class="slidev-layout pageBar">
        <div class="absolute-blue-box"></div>

        <slot />

        <div class="grid grid-cols-2 gap-8 mt-10">
            <div class="min-w-0">
                <slot name="left" />
            </div>

            <div class="min-w-0">
                <slot name="right" />
            </div>
        </div>

        <div><slot name="below" /></div>

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

    background: linear-gradient(
        45deg,
        #4ec4d4 15%,
        #146a8ce0 45%
    );

    background-size: 200% 200%;
    animation: gradient-animation 5s ease infinite;
}

@keyframes gradient-animation {
    0% {
        background-position: 0% 50%;
    }

    50% {
        background-position: 100% 50%;
    }

    100% {
        background-position: 0% 50%;
    }
}
</style>
