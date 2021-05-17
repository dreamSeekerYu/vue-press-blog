<template>
<div>
  <hr />
  GrandFather
  <el-button type="primary" @click="
        a = $options.data().a;
        m = $options.data().m;
        x.y = $options.data().x.y;
      ">reset</el-button>
  <!-- 直接 provide ... this 的方式可以省略很多麻烦 -->

  x---{{ x }}
  <Father :a.sync="a" :m.sync="m"></Father>
</div>
</template>

<script>
import Vue from "vue";
import Father from "./Father";
export default {
  components: {
    Father
  },
  provide() {
    this.x = Vue.observable({
      y: {
        z: "xyz"
      }
    });
    return {
      Grand_x: this,
      x: this.x //方法一：提供祖先组件的实例
    };
  },
  data() {
    return {
      a: {
        b: {
          c: "132132"
        }
      },
      x: {
        y: {
          z: "546546"
        }
      },
      m: {
        n: "4565"
      }
    };
  }
};
</script>
