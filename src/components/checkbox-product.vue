<template>
  <div class="checkbox ">
    <h3>Features</h3>
    <div 
      class="checkbox-features"
      v-for="(item, index) in features"
      :key="index"
    >
      <el-checkbox :v-model="item.option" :label="item.label" size="large" />
    </div>
    <h3>Make</h3>
    <div 
      class="checkbox-make"
      v-for="(item, index) in make"
      :key="index"
    >
      <el-checkbox :v-model="item.option" :label="item.label" size="large" />
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  features: {
    type: Array,
    default: [],
  },
  make: {
    type: Array,
    default: [],
  }

});
</script>

<style lang="scss">

</style>