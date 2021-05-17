##### 引用
    脚手架里面  主入口js文件里面引入

##### 盒模型
    父元素  row类
    子元素  col类   col-n   n/12
##### 文本设置
    .text-color
    .small  指定更小文本 (为父元素的 85% )
    
###### 文本属性

    .text-left
    .text-center
    .text-right
    .text-justify
    .text-nowrap
###### 文本颜色

    .text-muted                         柔和的文本
    .text-primary       蓝色的文本      重要的文本
    .text-success       绿色的文本      成功的文本
    .text-info                          提示信息
    .text-warning       橘黄色文本      警告文本
    .text-danger        红色文本        危险操作文本
    .text-secondary     中灰色
    .text-dark          深灰色文本      
    .text-light         浅灰色文本
    .text-white         白色文本

###### 背景颜色

    bg-primary          重要的背景颜色      蓝色
    bg-success          执行成功背景颜色    绿色
    bg-info             信息提示背景颜色
    bg-warning          警告背景颜色        橘黄色
    bg-danger           危险背景颜色        红色
    bg-secondary        副标题背景颜色
    bg-dark             深灰背景颜色
    bg-light            浅灰背景颜色

##### 图片设置
    圆角(四角)      rounded 
    椭圆图片        rounded-circle
    带间距的边框    img-thumbnail
    自适应图片      img-fluid  
                    === max-width:100%;height:auto
                    
##### 提示框

###### 提示框可以使用 .alert 类, 后面加上--类来实现:
    
    .alert-success, 
    .alert-info, 
    .alert-warning, 
    .alert-danger, 
    .alert-primary, 
    .alert-secondary, 
    .alert-light 
    .alert-dark 
###### 关闭提示框
    我们可以在提示框中的 div 中添加 .alert-dismissible 类，然后在关闭按钮的链接上添加 class="close" 和 data-dismiss="alert" 类来设置提示框的关闭操作。
###### 提示框动画
    .fade 和 .show 类用于设置提示框在关闭时的淡出和淡入效果



##### 折叠实现手风琴
##### 导航实现 tab 切换  动态(淡入淡出)选项卡
    
    fixed-top       固定在头部
    fixed-bottom    固定在底部


#### dropdown下拉菜单  
##### 点击展开 菜单项可以点击  但是不可以选中
##### 类似于一个展示菜单

    dropdown 类用来指定一个下拉菜单。
    我们可以使用一个按钮或链接来打开下拉菜单， 按钮或链接需要添加 .dropdown-toggle 和 data-toggle="dropdown" 属性。
    <div> 元素上添加 .dropdown-menu 类来设置实际下拉菜单，然后在下拉菜单的选项中添加 .dropdown-item 类。
###

    <div class="dropdown">
        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
            Dropdown button
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="#">Link 1</a>
            <a class="dropdown-item" href="#">Link 2</a>
            <a class="dropdown-item" href="#">Link 3</a>
        </div>
    </div>
    

### 折叠 展开 收起  callapse类

    .show   默认显示
    data-parent 属性可以很好的实现手风琴效果(点击展开收起的切换)
    
### 导航

    父类    nav
    子类    nav-item
    字字类  nav-link    实现上下居中  也可以加到子类上 效果一样
    默认从左到右
    nav-justified   导航等宽显示    



## bsp 按钮-徽章-进度条-卡片

### bootstrap  02

##### btn 按钮类

    按钮类可用于 <a>, <button>, 或 <input> 元素上:
    btn-color           背景颜色    自动设置合适的字体颜色
    btn-outline-color   外边框颜色 
    btn-lg              大号按钮
    btn-sm              小号按钮
    btn-block           块级按钮    独占父元素宽度的大按钮
    active              可用按钮
    disabled            禁用的按钮  button按钮是属性
                                    a 标签是设置 .disabled 类
##### badge 徽章类

    就像一个不能点击的按钮类
    badge badge-color   设置背景色和对应的字体颜色
    badge badge-pill    徽章自带圆帽 类似于胶囊形状

##### progress 进度条  默认高度16px 子元素需加上高度

    一个 progress 父类代表一个进度条
    一个 progress 父类可以有多个子类  自动分为多段  
    *
    父元素加类      progress
    子元素加类      progress-bar
        并且设置子元素 style 宽度    style="width:70%"
        设置子元素的背景类    bg-color
    条纹进度条
        子元素加类  progress-bar-striped    [straɪpɪd]
    动画进度条加类  progress-bar-animated
        
    <div class="progress">
      <div class="progress-bar bg-danger progress-bar-striped" style="width:70%"></div>
    </div>

##### pagination 分页 

    默认蓝色和白色搭配
    默认可以点击 
    父类加 pagination
    子类加 page-item    配合 active 类  可以高亮显示
                        设置 disabled   之后分页不可点击
    pagination-sm  小号的分页条目
    pagination-lg  大号的分页条目

#####   面包屑导航  样式类似于多级路由接口

    父级    breadcrumb
    子集    breadcrumb-item

####  卡片

    父类    card
    子类    card-header
    子类    card-body
    子类    card-footer
###### 图片卡片

    img当作背景图时 子类加 card-img-overlay
    
## bsp 小工具弹性盒

###     小工具
####    边框

    border  类          添加边框
    border-0            没边框
    border-top-0        没有上/右/下/左 边框
    border-color        边框颜色
    **
    rounded             倒圆角
    rounded-0           不倒圆角
    rounded-circle      正圆或者椭圆
    rounded-top         单边倒圆角
    
#####   居中(块元素)  mx-auto

##### padding类
##### margin类

    配合row类
    mr-auto     当前的元素和下一个元素的margin 的距离最大   margin-right
    ml-auto     当前的元素和上一个元素的margin 的距离最大   margin-left


#### 弹性盒布局

    父类    d-flex      d-inline-flex
            flex-row    水平从左到右排列
            flex-row-reverse   水平从右到左   类似于float的效果
            flex-column     垂直排列
            flex-column-reverse     翻转垂直排列的顺序   
            justify-content-start   水平方向的
                            end
                            center
                            between
                            around
            align-content-start
                            end
                            center
                            between
                            around
                            stretch
                            
            flex-nowrap     强制在一行显示(默认)
            flex-wrap
            flex-wrap-reverse
            
            
    子类    flex-fill   强制设置每个子元素的宽度都相同
            flex-grow-1 子元素使用剩下的空间  撑开剩余的空间
            order-number    order-12~order-1  排列顺序      越大越靠前
            
            
                            
            