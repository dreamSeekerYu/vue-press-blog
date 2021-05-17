
渐变调色板

https://uigradients.com/#JShine

感情色彩调色版

http://www.tuyiyi.com/tool/webse/

#### svg 常见使用规则
```
<!DOCTYPE html>
<html lang="en">

<head>
  <style>
    .red-text {
      font-size: 100px;
      stroke: red;
      fill: yellow;
      text-shadow: 0 0 10px #000;

    }
  </style>
</head>

<body>
  <!--  XML 数据格式 -->
  <!--  也可以用 img 的形式使用  不可以自定义操作 -->
  <!-- 以下三种类似  操作略复杂 -->
  <!-- iframe 的方式使用  -->
  <!-- <embed src="src" type="image/svg+xml"> -->

  <!-- embed 和 iframe 所有主要浏览器都支持，并允许使用脚本
    缺点：不推荐在HTML4和XHTML中使用（但在HTML5允许） -->

  <!-- <object data="src" type="image/svg+xml"></object>   -->
  <!--  object 所有主要浏览器都支持，并支持HTML4，XHTML和HTML5标准
    缺点：不允许使用脚本。 -->

  <!-- fill  颜色充填
    stroke  描边
    stroke-width 边框宽度 -->

  <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <circle cx="100" cy="50" r="40" stroke="black" stroke-width="2" fill="red" />
  </svg>
  <!-- xmlns 外联 svg 地址   相当于src 或 herf -->

  <svg width="500" height="500" viewBox="50 50 500 500">
    <!-- 默认 300*150大小 -->
    <!-- viewBox="50 50 100 100"  设置视口范围 -->

    <circle id="mycircle" cx=75 cy=75 r=20 fill=red></circle>
    <!-- css 属性 -->

    <!-- 椭圆 ellipse-->
    <ellipse cx=175 cy=175 rx="20" ry=40 fill=pink stroke=blue stroke-width=5 stroke-dasharray="20,10,5,5,5,10">
    </ellipse>
    <!-- cx cy  rx ry  半径 -->

    <line xi=50 y1=50 x2=100 y2=100 style="stroke:blue;stroke-width:3px"></line>
    <!--  起点 终点 x1 y1  x2 y2 -->

    <!-- 折线 -->
    <polyline></polyline>
    <!-- points="x1,y1  x2,y2 x3,y3 ...." -->

    <!-- 多边形polygon -->
    <polygon points="100,100 200,100 150,150"></polygon>
    <!-- points -->

    <!-- 矩形 -->
    <rect x=100 y=300 width=100 height=100 fill=red rx=20 ry=30> </rect>
    <!-- x  y   height  width  起点+宽高 -->
    <!-- rx 和 ry 属性可使矩形产生圆角。 -->

    <use herf="#mycircle" x="150" y="150" fill=blue></use>

  </svg>

  <svg width="500" height="500" viewBox="50 50 500 500">

    <!-- path d="point1"   -->
    <path d="M 50,50 L 100,50 L300,200 Z" fill=none stroke=red></path>
    <!--  M起始点   L路径   Z 闭合路径 -->

    <!-- text  文本 -->
    <text x=100 y=150 class="red-text">asdfa</text>
    <!-- x y  -->

    <use herf="#mycircle" x="150" y="150" fill=blue></use>

    <g></g>
    <!-- 分组标签 -->

    <defs></defs>
    <!-- 申明标签 类似于函数声明   但是一些 css 设置的动效会丢失  颜色不会丢失-->

    <!-- pattern 重复平铺 -->

    <!-- image  插入图片 -->

    <!-- animate 标签 -->



  </svg>

  <!-- a 跳转页面 -->
  <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
    <a xlink:href="http://www.w3schools.com/svg/" target="_blank">
      <text x="0" y="15" fill="red">I love SVG</text>
    </a>
  </svg>

  <svg height="210" width="500">
    <polygon points="100,10 40,198 190,78 10,78 160,198"
      style="fill:lime;stroke:purple;stroke-width:5;fill-rule:evenodd;" />
  </svg>
  <!-- fill-rule:evenodd;效果 -->


  <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <text x="0" y="15" fill="red" transform="rotate(30 20,40)">I love SVG</text>
  </svg>


  <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
    <defs>
      <path id="path1" d="M75,20 a1,1 0 0,0 100,0" />
    </defs>
    <text x="10" y="100" style="fill:red;">
      <textPath xlink:href="#path1">I love SVG I love SVG</textPath>
    </text>
  </svg>


  <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
      <filter id="f1" x="0" y="0">
        <!-- <filter>标签用来定义SVG滤镜。<filter>标签使用必需的id属性来定义向图形应用哪个滤镜 -->
        <feGaussianBlur in="SourceGraphic" stdDeviation="15" />
        <!-- <feGaussianBlur> 元素是用于创建模糊效果 -->
      </filter>
    </defs>
    <rect width="90" height="90" stroke="green" stroke-width="3" fill="yellow" filter="url(#f1)" />
  </svg>
  <!-- <filter>元素id属性定义一个滤镜的唯一名称
    <feGaussianBlur>元素定义模糊效果
    in="SourceGraphic"这个部分定义了由整个图像创建效果
    stdDeviation属性定义模糊量
    <rect>元素的滤镜属性用来把元素链接到"f1"滤镜 -->


  <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
      <linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="0%">
        <stop offset="0%" style="stop-color:rgb(255,255,0);stop-opacity:1" />
        <stop offset="100%" style="stop-color:rgb(255,0,0);stop-opacity:1" />
      </linearGradient>
    </defs>
    <ellipse cx="200" cy="70" rx="85" ry="55" fill="url(#grad1)" />
  </svg>

  <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
      <linearGradient id="grad2" x1="0%" y1="0%" x2="0%" y2="100%">
        <stop offset="0%" style="stop-color:rgb(255,0,0);stop-opacity:1" />
        <stop offset="100%" style="stop-color:rgb(255,255,0);stop-opacity:1" />
      </linearGradient>
    </defs>
    <ellipse cx="200" cy="70" rx="85" ry="55" fill="url(#grad2)" />
  </svg>

  <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
      <linearGradient id="grad3" x1="0%" y1="0%" x2="100%" y2="0%">
        <stop offset="0%" style="stop-color:rgb(255,255,0);stop-opacity:1" />
        <stop offset="100%" style="stop-color:rgb(255,0,0);stop-opacity:1" />
      </linearGradient>
    </defs>
    <ellipse cx="200" cy="70" rx="85" ry="55" fill="url(#grad3)" />
    <text fill="#ffffff" font-size="45" font-family="Verdana" x="150" y="86">
      SVG</text>
  </svg>

  <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
      <radialGradient id="grad4" cx="50%" cy="50%" r="50%" fx="50%" fy="50%">
        <stop offset="0%" style="stop-color:rgb(255,255,255);stop-opacity:0" />
        <stop offset="100%" style="stop-color:rgb(0,0,255);stop-opacity:1" />
      </radialGradient>
    </defs>
    <ellipse cx="200" cy="70" rx="85" ry="55" fill="url(#grad4)" />
  </svg>

  <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
      <radialGradient id="grad5" cx="20%" cy="30%" r="30%" fx="50%" fy="50%">
        <stop offset="0%" style="stop-color:rgb(255,255,255);stop-opacity:0" />
        <stop offset="100%" style="stop-color:rgb(0,0,255);stop-opacity:1" />
      </radialGradient>
    </defs>
    <ellipse cx="200" cy="70" rx="85" ry="55" fill="url(#grad5)" />
  </svg>

</body>

</html>

```
#### 渐变色为文字
```

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>渐变颜色的文字</title>
  <style>
    .site__title {
      color: #abeaf7;
      background-image: -webkit-linear-gradient(90deg, #abeaf7, #f41392);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      -webkit-animation: change 5s infinite linear;
    }

    @-webkit-keyframes change {
      from {
        -webkit-filter:
          -rotate(0deg);
      }

      to {
        -webkit-filter: hue-rotate(-360deg);
      }
    }
  </style>
</head>

<body>
  <h1 class="site__title">我是蚊子</h1>
</body>

</html>
```

#### svg 实现雨滴效果
```
  <svg width='100%' height='100%' id='box' fill=pink>
    <defs>
      <linearGradient id="rainLinear" x1='0' y1='0' x2='0' y2='1'>
        <stop offSet='0' stop-color='white'></stop>
        <stop offSet='1' stop-color='blue'></stop>
      </linearGradient>
    </defs>
    <path id='rainPath' d='M 10 10 10 500' stroke='red'></path>
    <rect x='100' y='0' width='5' height='20' fill='url(#rainLinear)'>
      <animateMotion path='M 10 10 10 500' dur='5s'>
      </animateMotion>
    </rect>

  </svg>
  <script>
    var SVG_NS = "http://www.w3.org/2000/svg"
    var XLINK_NS = "http://www.w3.org/1999/xlink"
    var box = document.querySelector('#box')
    let idNum = 0
    // 生成随机数
    function randomNum(min, max) {
      return parseInt(min + (max - min) * Math.random())
    }
    // 雨滴函数
    function createRain() {
      // 创建雨滴和动画
      let rain = document.createElementNS(SVG_NS, 'rect')
      let rainAnimate = document.createElementNS(SVG_NS, 'animateMotion')
      let x = randomNum(1, 1000)
      let time = randomNum(1, 10)
      // 生成id
      let id = idNum
      idNum++

      // 插入雨滴和动画
      box.appendChild(rain)
      rain.appendChild(rainAnimate)

      // 设置雨滴属性
      rain.setAttribute('x', x)
      rain.setAttribute('y', 0)
      rain.setAttribute('width', 5)
      rain.setAttribute('height', 20)
      rain.setAttribute('fill', 'url(#rainLinear)')
      rain.setAttribute('id', "a" + id)

      // 设置动画属性
      rainAnimate.setAttribute('path', 'M 10 10 10 500')
      rainAnimate.setAttribute('begin', 0)
      rainAnimate.setAttribute('dur', time + "s")

      // 时间到达后删除生成的雨滴
      setTimeout(() => {
        box.removeChild(document.querySelector("#a" + id))
      }, time * 1000 - 200)
    }
    // 定时器调用雨滴函数
    setInterval(() => {
      createRain()
    }, 500)
    //单独调用雨滴函数
    createRain()
  </script>
```