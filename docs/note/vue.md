vue



##  vue 组件通讯

GrandFather.vue

<<< @/docs/note/components/vue-message/GrandFather.vue

Father.vue

<<< @/docs/note/components/vue-message/Father.vue

Self.vue

<<< @/docs/note/components/vue-message/Self.vue

Child.vue

<<< @/docs/note/components/vue-message/Child.vue


SureInject.vue

<<< @/docs/note/components/vue-message/SureInject.vue



[以下四个参考文档](https://juejin.im/post/6890135726647296014?utm_source=gold_browser_extension)
- vue-toastification  vue 的提示组件  动画效果好
- vue-good-table vue的表格组件
- 前端配置化开发方案  ele pro 方案 [Element-Pro-Crud](https://github.com/BoBoooooo/Element-Pro-Crud)
- vue2-datepicker  日历组件
- vue-star-rating  标星组件   


vue-waterfall- Vue.js 的瀑布布局组件

vue-infinite-scroll- VueJS 的无限滚动指令
Vue.Draggable- 实现拖放和视图模型数组同步

vue-table- 简化数据表格

VueCircleMenu- 漂亮的 vue 圆环菜单

vue-beauty- 由 vue 和 ant design 创建的优美 UI 组件

vue-awesome-swiper- vue.js 触摸滑动组件

vue-amap- 基于 Vue 2 和高德地图的地图组件

vue-google-maps- 带有双向数据绑定 Google 地图组件

vue-progressbar- vue 轻量级进度条

vue-upload-component- Vuejs 文件上传组件

vue-video-player- VueJS 视频及直播播放器

vue-msgbox- vuejs 的消息框
vue-slider- vue 滑动组件
vue-core-image-upload- 轻量级的 vue 上传插件
vue-slide- vue 轻量级滑动组件
vue-lazyload-img- 移动优化的 vue 图片懒加载插件
vue-progressive-image- Vue 的渐进图像加载插件

vue-region-picker 选择中国的省份市和地区

vue-impression 移动 Vuejs2 UI 元素

vue-video- Vue.js 的 HTML5 视频播放器

vue-toast-mobile- VueJS 的 toast 插件
vue-image-crop-upload- vue 图片剪裁上传组件

vue-baidu-map- 基于 Vue 2 的百度地图组件库

vue-social-sharing- 社交分享组件

cubeex- 包含一套完整的移动 UI

vue-image-clip- 基于 vue 的图像剪辑组件

vue-ripple- 制作谷歌 MD 风格涟漪效果的 Vue 组件

vue-touch-keyboard- VueJS 虚拟键盘组件

vue-city- 城市选择器

vuelidate- 简单轻量级的基于模块的 Vue.js 验证

vue-gesture- VueJS 的手势事件插件

vue-file-base64- 将文件转换为 Base64 的 vue 组件

vue-input-autosize- 基于内容自动调整文本输入的大小
vue-lazyloadImg- 图片懒加载插件

```

vue的开发环境接口代理配置
使用vue-cli自动化工具搭建的项目架构： 在config/index中的dev对象中进行如下配置：

proxyTable: {
   '/api': {
         //后台接口地址
         target: 'http://localhost:3000',
         //这里可以模拟服务器进行get和post参数的传递
         changeOrigin: true,
         //前端所有的/api请求都会请求到后台的/api路径之下
         pathRewrite: {
            '^/api': '/api'
         }
   }
}
	此时在vue中数据请求路径统一写成：/api/*就可以了

```

```

线上部署配合nginx服务器进行反向代理后台接口 nginx.conf的配置如下：
server {
        listen 80;
        server_name blog.cygdream.com;
        location /api/ {
                proxy_pass http://101.201.235.230:9999/api/;
        }
        location / {
                proxy_pass http://101.201.235.230:9998;

        }
}
-	listen：外部访问的端口；
-	server_name:外部访问的域名；
-	location /api/ :这是后台接口的代理配置；
-	location / :这是项目的端口代理


```


#### vue cli3.0 +   开启 gzip 编译
    
    yarn add compression-webpack-plugin -D3

修改vue.config.js文件为以下代码
```
const CompressionWebpackPlugin = require('compression-webpack-plugin')
const isProd = process.env.NODE_ENV === 'production'
module.exports = {
  configureWebpack: config => {
    if (isProd) {
      // 配置webpack 压缩
      config.plugins.push(
        new CompressionWebpackPlugin({
          test: /\.js$|\.html$|\.css$/,
          // 超过4kb压缩
          threshold: 4096
        })
      )
    }
  }
}
```
成功的标志是构建的文件里面有.gz 后缀的文件


#### 生产环境删除console.log
    yarn add babel-plugin-transform-remove-console -D
    
babel.config.js文件
```
// 所有生产环境
const prodPlugin = []

if (process.env.NODE_ENV === 'production') {
  
// 如果是生产环境，则自动清理掉打印的日志，但保留error 与 warn
  prodPlugin.push([
    'transform-remove-console',
    {
      exclude: ['error', 'warn']
    }
  ])
}

module.exports = {
   plugins: [
     ...prodPlugin
   ]
}
```


