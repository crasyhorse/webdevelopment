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