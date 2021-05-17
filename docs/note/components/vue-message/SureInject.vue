<template>
<div>
  <hr />
  <b> 验证 provide 、 inject 的属性使用方式</b>
  <p>x-{{ x }}</p>
  <p>Grand_x--{{ Grand_x.x }}</p>

  <hr />
  <b>x 只能收到对应自己方式改变的 x 的值,
    相当于闭包，作用域只限于当前的指针内部，一旦指针 x
    被破坏或则被替换，响应式就不会生效了
    <br />
    Grand_x.x 通过传递 this 来透传 x， 的值，不能改变单纯的 x 注入的值，应为 x
    此时的引用指针已经被替换，所以会出现不同步的现象, 但是当前直接使用和 更改
    Grand_x.x 都将会是响应式的
  </b>
</div>
</template>

<script>
export default {
  inject: ["x", "Grand_x"]
};
</script>
