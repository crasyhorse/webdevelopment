<template>
  <div class="slidev-layout intro hep-section">
    <div class="section-content">
      <slot />
      <img
        class="section-illustration"
        src="/images/section-divider.svg"
        alt=""
        aria-hidden="true"
      />
    </div>
  </div>
</template>

<style scoped>
/* Center the entire title, subtitle, and illustration as one group. */
.slidev-layout.hep-section {
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  width: 100%;
  height: 100%;
}
.section-content {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 0;
  width: 100%;
  max-width: 100%;
  padding: 1rem 2.5rem;
}
.section-content :deep(h1) {
  font-size: 50px;
  line-height: 1.15;
  font-weight: 600;
  margin: 0;
  text-align: center;
}
.section-content :deep(h2) {
  font-size: 2.75rem;
  line-height: 1.25;
  font-weight: 400;
  margin: 0.9rem 0 0;
  text-align: center;
}
.section-illustration {
  display: block;
  width: 230px;
  max-width: 32%;
  height: auto;
  margin: 1.5rem auto 0;
  flex-shrink: 0;
}
</style>
