<template>
<div>
  <hr />
  father
  <el-button type="primary" @click="$emit('update:a', { b: { c: 'father' } })">father</el-button>
  {{ a }}
  <Self v-bind="$attrs" :a="a" v-on="$listeners"></Self>
</div>
</template>

<script>
import Self from "./Self";

export default {
  inheritAttrs: false, // 不让 $attrs 的属性保存到 组件的根 dom 结构上
  components: {
    Self
  },
  props: ["a"]
};
</script>