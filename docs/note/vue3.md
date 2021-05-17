
vue3.0 自定义 hooks  相当于 vue2 mixins 的优化版，方便抽离封装功能使用的 

#### v-model 改变  可以绑定多个值
```
<modal v-model:visible="isVisible" v-model:content="content"></modal>

<!-- 相当于 -->
<modal 
    :visible="isVisible"
    :content="content"
    @update:visible="isVisible"
    @update:content="content"
/>

```

#### 父组件插槽的写法 
将slot和slot-scope进行了合并同意使用
```
<!-- 父组件中使用 -->
 <template v-slot:content="scoped">
   <div v-for="item in scoped.data">{{item}}</div>
</template>

<!-- 也可以简写成： -->
<template #content="{data}">
    <div v-for="item in data">{{item}}</div>
</template>

```

多个根节点 片段（Fragment）

边界处理组件 Suspense  成功失败状态的






#### 学习demo  (实验性质的 setup script 支持性还不太好，以后研究)
home.vue 文件里面
```
<template>
<div class="home">
  <img alt="Vue logo" src="../assets/logo.png">

  <hr>
  <div v-for="(item,i) in list" :key="i">
    {{filters(item.a) }}
  </div>

  <hr>
  {{msg}}
  <HelloWorld :msg="msg" :list="list" >asdfasd</HelloWorld>
</div>
</template>

<script lang="ts">
import {
  defineComponent,
  onMounted,
  provide,
  reactive,
  readonly,
  watchEffect,
  ref
} from 'vue';
import HelloWorld from '@/components/HelloWorld.vue'; // @ is an alias to /src

export default defineComponent({
  name: 'Home',
  components: {
    HelloWorld,
  },
  setup() {
    const str = 'Welcome to Your Vue.js + TypeScript App'
    const msg = ref(str)
    const provides = ref('provide_value')
    provide('provide_key', 'provide_value') // 非响应性的传递参数
    provide('provide_key', readonly(provides))
    //这样的传递才是响应性的，并且子组件不能修改 此属性的值
    // 但是可以通过 provide 一个 函数来提供子组件修改父组件的方式
    setInterval(() => {
      provides.value = provides.value + 1
    }, 1000)

    watchEffect(() => {
      console.log('副作用函数')
    }, {
        flush: 'post'
      })//  但是不同于 nextTick 请注意并且研究

    // onMounted(()=>{
    setInterval(() => {
      msg.value = str.slice(1, Math.floor(Math.random() * 30 + 3))
    }, 1000)
    // })

    let list = reactive([{
      a: 123
    }, {
      a: 456
    }, {
      a: 789
    }])

    setTimeout(()=>{
      //  任何导致引用指针破坏的行为都会导致 响应性的失效 (闭包原理)   vue2 版本不纯在这个问题
    //   list=reactive([{
    //   a: 456
    // }, {
    //   a: 123
    // }, {
    //   a: 123
    // }])
    list.forEach(item=>{
      item.a=123
    })
    },2000)
    const filters = (a: Number): Boolean => a >= 500

    return {
      msg,
      list,
      filters
    }
  }
});
</script>

```



hellowWord.vue 文件
```

<template>
  <div class="hello">
    <h1>msg---{{msg}}</h1>
    {{a}}
    --{{counter.a}}
    ---{{d}}
    -{{c}}

    provide_key---{{provide_key}}

    <div v-for="(item,i) in list" :key="i">
    {{filters(item.a) }}
  </div>

  <hr>
  </div>
</template>

<script lang="ts">
import { computed, defineComponent, inject, onMounted, ref, toRefs, watch } from 'vue';

//  props 的改变不会导致 setup 的重新执行，每个组建的 setup 只会执行一次哦
export default defineComponent({
  name: 'HelloWorld',

  // props 到底需要咋使用 ？
  // props 没有显示接受父子传参时 走了 attrs 属性上面
  // 要显示的在 setup 中接受 props父组件传参 需要定义props 参数的类型(vue2.0版本的类型),如下
    props: ({
    list:Array,
    msg:String
  } as unknown) as undefined,
  // 并且在 setup 中定义 ts 类型   才能接受到,否则需通过 attr 属性来解构来自父组件的参数, 接受之后属性从 attrs 上转移到 props 上面,(与vue2 一致) 如下
  setup(props:{
      msg:String,
      list: Array<Object>
  },{attrs,emit,slots,expose}){
       // context 包含 attrs  emit  expose  props slots 可以通过的解构取出来

    let provide_key=  inject('provide_key','default_value')

    // 使用 `toRefs` 创建对prop的 `user` property 的响应式引用
    const { msg,list } = toRefs(props)// ts 报错  解决 props  上面需要定义参数的类型
    // toRefs 只有一个参数

    console.log('-----------------props--',props,'------attrs,emit,slots-------',attrs,emit,slots,'prosp is change ,setup run again!!!')

    const a=ref(123)
    const b=ref('456')
    const c = ref(a.value + b.value)
    const counter =ref({a:132,b:[123]})

    const d = computed(()=>{
      return a.value*2
    })

    // ref 函数返回一个 ref 对象,
    // 书写js、ts 代码需要通过.value 的形式显式调用其值，
    //  模板默认通过.value 的形式获取其值，引用指针的存在保证了其响应性
    console.log(counter)

    onMounted(()=>{
      setInterval(() => {
        
        c.value = c.value+1
      }, 1000);
    })
    onMounted(()=>{
      setInterval(() => {
        a.value++
      }, 1000);
    })

   watch(props,()=>{
      console.log(props.msg)
    })
    watch(a,(newValue,oldValue)=>{
      console.log(newValue,oldValue)
    })

    const filters = (a: Number): Boolean => a >= 500

    return {
      a,
      c, 
      counter,
      d,
      provide_key,
      msg,
      list,
      filters
    }
  }
});
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
```