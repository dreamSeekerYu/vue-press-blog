react




[值得推荐的8个 React 库](https://mp.weixin.qq.com/s/w-x-XfLkAwNGuqn4lfpV4Q)

1. React Lazyload   懒加载图片，组件

2. React Responsive
 提供了一种方便的方法来在 React 中包含媒体查询。这个库同时提供了一个可以使用的钩子和一个组件——分别是 useMediaQuery 钩子和 MediaQuery 组件。
这个库允许你为你的应用程序创建可以轻松重用的特定断点

3. React Beautiful DnD  不仅支持纵向和横向列表移动，还允许你在列表之间拖放列表项。这个库的特性清单几乎是无穷无尽的：它包括有条件的拖放，还支持鼠标、键盘和触摸屏。这是拖放领域目前为止最完善的库。

4. Styled Components

Styled Components 库是这个类目中最流行的库，GitHub 上有超过 32K 的星星。这个库允许你在 React 组件中使用纯 CSS 设置你的组件样式

父子传参  props 
事件传递  直接传递给子元素，子元素直接调用

#### react  事件
驼峰命名法

redux/dva + ts 时候  每个函数和变量都需要申明的

react-dnd 拖拽组件库

react 没有指令 过滤器 之类的功能性 api，所以需要分装成组件的形式来实现，比如 多行文本的省略号，按钮级的权限等等

.fast-show {
    content-visibility: auto;
    contain-intrinsic-size: 200px;
}



#### 复习原生事件

1.DOM0级事件

    1)只支持冒泡
    
    2)兼容性好
    
    3)只能绑定一次

```
el.onclick = function(){}
```

2.DOM2级事件

    1)支持捕获和冒泡

>事件三要素：1>事件源 2>事件类型  3>事件处理器（事件监听器）

>事件流：捕获  冒泡

el.addEventListener('click',function(){},false/true)  false:冒泡  true：捕获

<html>
<!--在这里插入内容-->
<img src="https://note.youdao.com/yws/public/resource/b1e96bb2fdece2915057c3bab3664f72/xmlnote/D9333310460E44519DA57B8056AC9A06/28175" width="400"/>
</html>

#### 一、在react中使用原生事件

```
handClick(){}

在componentDidMount(){
    //添加事件
    this.refs.title.addEventListener('click',this.handClick,false)
}

在componentWillUnMount(){
    //移除事件  防止内存泄漏
    this.refs.title.removeEventListener('click',this.handClick,false)
}
```
#### 二、合成事件的绑定方式和实现机制

在成员方法内部没有this，需要修改this指向

<html>
<!--在这里插入内容-->
<img src="https://note.youdao.com/yws/public/resource/b1e96bb2fdece2915057c3bab3664f72/xmlnote/00C66649EE4C4200881CB62B1D38D5AB/28128" width="500"/>

<img src="https://note.youdao.com/yws/public/resource/b1e96bb2fdece2915057c3bab3664f72/xmlnote/D30F27BFE94D4B1BA48C8C323405F9B8/28151" width="500"/>

<img src="https://note.youdao.com/yws/public/resource/b1e96bb2fdece2915057c3bab3664f72/xmlnote/C6644631B70443308D403F8A2CF0C263/28147" width="500"/>

<img src="https://note.youdao.com/yws/public/resource/b1e96bb2fdece2915057c3bab3664f72/xmlnote/D8F0225749334AEB871B10700217189D/28130" width="500"/>
</html>

**react并没有给每个真实的DOM节点去添加事件，而是仅仅给最顶层节点（document）添加了一个事件处理器，因为事件传递机制，在任何元素上触发的事件都会触发该事件处理器的执行。**
然后在该事件处理器内我们再根据触发的实际情况去调用真正的事件的事件处理函数。
这样的话，我们只有一个事件处理器，但是却完成了所有的任务，大大的提高了性能。

**注：react合成事件系统也实现了一套捕获和冒泡的机制。**

#### 三、react合成事件和原生事件可以混用

在react合成事件内阻止事件传递时，不会影响对原生的事件产生影响。

如果在原生事件内阻止事件的传递，则不会触发document上的事件处理器则不会触发，意味着所有的react合成事件都不会触发。

#### 四、react已经帮我们处理了事件的兼容性问题。

#### 五、获取事件对象的方式

事件处理器的第一个参数即事件对象

原生的事件对象和react的事件对象不同




## 生命周期

    react 不推荐操作 DOM
    生命周期的覆盖 
    
##### 组件内部的生命周期

        Will---render---Did
#### 1  创建阶段  component--Mount

    1   constructor(){} // 接收props  定义默认 
       state
    2   componentWillMount(){}//组件渲染之前
    3   render(){} //组件渲染  diff算法                最小化差异
    4   coomponentDidMount(){
         * 请求数据 
        }//组件初始化完毕

    
#### 2  变化阶段  component--Update

#####    1  state  变化后调用

    1   shouldComponentUpdate(nextProps,nextState){}
            //组件是否因该跟新吗？ 必须要有返回值   true/false
        return false  //不调用 render()
        return true   //调用   render()
           优化渲染的 
    2  componentWillUpdate(nextProps,nextState){}  //即将废弃
            组件跟新前
    3   render(){}
            //组件更新 diff
    4   componentDidUpdate(prevProps,prevState){}
          组件跟新完成
#####    2   props

    1    componentWillReicevedProps 
    返回值是bool？

    

#### 3  销毁阶段

    1   componentWillUnMount)(){}
    子集的参数保存到自己的 state里面    cunstructor
    只执行一遍      所以渲染之后就不受父组件变化的影响
    componentWillRecievedProps      里面设置----可以解决
 
 
### 新生命周期

    带will的都废弃 除了组件卸载
    getSnapshotBeforeUpdate(){
        return hist
         //必须要有返回值
         返回值作为   componentDidUpdate( nextProps,nextState,hist){
             //  prevProps ， prevState ， hist  配合做历史记录之类的
         }
         的第三个参数
    }
     
#### 操作真实的Dom  用ref

    dom节点上获取到的是Dom
    组件上获取到的是组件实例
    ref的值有字符串和函数
    字符串是在componentDidMount里面用 this.refs.``获取真实的Dom
    值为函数时 {(dom)=>{}
    其形参就是真实的 Dom对象
    
    
    
## React 组件通讯

### 组件的通讯
>1 父 ==> 子  props
```
let {Component}=React
class Son extends Component{
    constructor(props){
        super(props)
       // this.change=this.change.bind(this)
    }
    render(){
        this.props.参数

        return <div onClick={
           // this.change.bind(this,...arguments)
           // ()=>{ this.change('123')  //用箭头函数传参}
           }></div>
    }
    change=()=>{

    }
}
```
- state
- 

插槽  
    组件的插槽里的内容显示在{this.props.children}中




    