<template>
<div>
  <hr />
  self
  <el-button type="primary" @click="$emit('update:a', { b: { c: 'self' } })">self</el-button>
  {{ a }}
  <Child v-bind="$attrs" :a="a" v-on="$listeners"></Child>
  <SureInject></SureInject>
</div>
</template>

<script>
import Child from "./Child";
import SureInject from "./SureInject";

export default {
  components: {
    Child,
    SureInject
  },
  props: ["a"]
};
</script>
