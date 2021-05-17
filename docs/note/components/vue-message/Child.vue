<template>
<div>
  <hr />
  child
  <el-button type="primary" @click="$emit('update:a', { b: { c: 'child' } })">child</el-button>
  <el-button type="primary" @click="$emit('update:m', { n: 123 })">change --m
  </el-button>
  <el-input v-model="inputValue" placeholder=""></el-input>
  {{ a }}---m {{ m }}

  <hr />
  x-{{ x }}
  <el-button type="primary" @click="x.y = { z: 1231232313213 }">change -- x</el-button>

  <hr />

  Grand_x--{{ Grand_x.x }}
  <el-button type="primary" @click="Grand_x.x = { y: { z: '这是通过注入this的方式实现的改变' } }">change -- x</el-button>
</div>
</template>

<script>
export default {
  props: ["a", "m"],
  inject: ["x", "Grand_x"],
  computed: {
    inputValue: {
      set(val) {
        this.$emit("update:a", {
          b: {
            c: val
          }
        });
      },
      get() {
        return this.a.b.c;
      }
    }
  }
};
</script>
