const head = require('./config/head.js');
const plugins = require('./config/plugins.js');
const themeConfig = require('./config/themeConfig.js');


module.exports = {
  // theme: 'vdoing', // 使用依赖包主题
  // theme: 'reco', // 使用依赖包主题
  title: "白小哥",
  description: '专注web前端学习与总结。JavaScript,ES6,vue,css3,html5',
  markdown: {
    lineNumbers: true, // 代码行号
  },

  head,
  plugins,
  themeConfig,
}