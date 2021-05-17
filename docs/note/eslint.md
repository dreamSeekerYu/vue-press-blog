```
{
  // tab 大小为2个空格
  "editor.tabSize": 2,
  // 100 列后换行
  "editor.wordWrapColumn": 100,
  // 保存时格式化
  "editor.formatOnSave": true,
  // 开启 vscode 文件路径导航
  "breadcrumbs.enabled": true,
  // prettier 设置语句末尾不加分号
  "prettier.semi": false,
  // prettier 设置强制单引号
  "prettier.singleQuote": true,
  // 选择 vue 文件中 template 的格式化工具
  "vetur.format.defaultFormatter.html": "prettyhtml",
  // 显示 markdown 中英文切换时产生的特殊字符
  "editor.renderControlCharacters": true,
  // 设置 eslint 保存时自动修复
  "eslint.autoFixOnSave": true,
  // eslint 检测文件类型
  "eslint.validate": [
    "javascript",
    "javascriptreact",
    {
      "language": "html",
      "autoFix": true
    },
    {
      "language": "vue",
      "autoFix": true
    }
  ],
  // vetur 的自定义设置
  "vetur.format.defaultFormatterOptions": {
    "prettier": {
      "singleQuote": true,
      "semi": false
    }
  },
  "workbench.iconTheme": "material-icon-theme"
}
```

#### 我的笔记本配置

```


{
    "files.associations": {
        "*.cjson": "jsonc",
        "*.wxss": "css",
        "*.wxs": "javascript"
    },
    "emmet.includeLanguages": {
        "wxml": "html"
    },
    "minapp-vscode.disableAutoConfig": true,
    "[html]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[javascript]": {
        "editor.defaultFormatter": "vscode.typescript-language-features"
    },
    "[json]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "editor.formatOnPaste": true,
    "editor.formatOnSave": true,
    "editor.formatOnType": true,
    //配置eslint
    "eslint.autoFixOnSave": true,
    "files.autoSave": "off",
    "eslint.validate": [
        "javascript",
        "javascriptreact",
        "html",
        {
            "language": "vue",
            "autoFix": true
        },
        {
            "language": "html",
            "autoFix": true
        }
    ],
    "eslint.options": {
        "extensions": [
            ".js",
            ".vue"
        ],
        "plugins": [
            "html"
        ]
    },
    //为了符合eslint的两个空格间隔原则
    "editor.tabSize": 2,
    "[vue]": {
        "editor.defaultFormatter": "octref.vetur"
    },
    "vetur.format.defaultFormatterOptions": {
        "prettier": {
            // 格式化不加分号
            "semi": false,
            // 格式化为单引号
            "singleQuote": true
        }
    },
    // 在方法括号之间插入空格
    "javascript.format.insertSpaceBeforeFunctionParenthesis": true,
    // 关闭自动更新扩展
    "extensions.autoUpdate": false,
    "prettier.singleQuote": true,
    "prettier.semi": false,
    "vetur.format.defaultFormatter.html": "js-beautify-html",
    "[jsonc]": {
        "editor.defaultFormatter": "vscode.json-language-features"
    },
    "liveServer.settings.port": 5600,
    "window.zoomLevel": 1,
    "liveServer.settings.donotShowInfoMsg": true
    
```


````
{
  // tab 大小为2个空格
  "editor.tabSize": 2,
  // 100 列后换行
  "editor.wordWrapColumn": 100,
  // 保存时格式化
  "editor.formatOnSave": true,
  // 开启 vscode 文件路径导航
  "breadcrumbs.enabled": true,
  // prettier 设置语句末尾不加分号
  "prettier.semi": false,
  // prettier 设置强制单引号
  "prettier.singleQuote": true,
  // 选择 vue 文件中 template 的格式化工具
  "vetur.format.defaultFormatter.html": "prettyhtml",
  // 显示 markdown 中英文切换时产生的特殊字符
  "editor.renderControlCharacters": true,
  // 设置 eslint 保存时自动修复
  "eslint.autoFixOnSave": true,
  // eslint 检测文件类型
  "eslint.validate": [
    "javascript",
    "javascriptreact",
    {
      "language": "html",
      "autoFix": true
    },
    {
      "language": "vue",
      "autoFix": true
    }
  ],
  // vetur 的自定义设置
  "vetur.format.defaultFormatterOptions": {
    "prettier": {
      "singleQuote": true,
      "semi": false
    }
  },
  "workbench.iconTheme": "material-icon-theme"
}

```



```
{
    // tab 大小为2个空格
    "editor.tabSize": 2,
    // 100 列后换行
    "editor.wordWrapColumn": 100,
    // 保存时格式化
    "editor.formatOnSave": true,
    // 开启 vscode 文件路径导航
    "breadcrumbs.enabled": true,
    // prettier 设置语句末尾不加分号
    "prettier.semi": false,
    // prettier 设置强制单引号
    "prettier.singleQuote": true,
    // 选择 vue 文件中 template 的格式化工具
    "vetur.format.defaultFormatter.html": "prettyhtml",
    // 显示 markdown 中英文切换时产生的特殊字符
    "editor.renderControlCharacters": true,
    // 设置 eslint 保存时自动修复
    "eslint.autoFixOnSave": true,
    // eslint 检测文件类型
    "eslint.validate": [
        "javascript",
        "javascriptreact",
        {
            "language": "html",
            "autoFix": true
        },
        {
            "language": "vue",
            "autoFix": true
        }
    ],
    // vetur 的自定义设置
    "vetur.format.defaultFormatterOptions": {
        "prettier": {
            "singleQuote": true,
            "semi": false
        }
    },
    "workbench.iconTheme": "material-icon-theme",
    "editor.codeActionsOnSave": {
        "source.fixAll.eslint": true
    }
}
// {
//     // 100 列后换行
//     "editor.wordWrapColumn": 140,
//     "files.associations": {
//         "*.cjson": "jsonc",
//         "*.wxss": "css",
//         "*.wxs": "javascript"
//     },
//     "emmet.includeLanguages": {
//         "wxml": "html"
//     },
//     "minapp-vscode.disableAutoConfig": true,
//     "[html]": {
//         "editor.defaultFormatter": "esbenp.prettier-vscode"
//     },
//     "[javascript]": {
//         "editor.defaultFormatter": "vscode.typescript-language-features"
//     },
//     "[json]": {
//         "editor.defaultFormatter": "esbenp.prettier-vscode"
//     },
//     "editor.formatOnPaste": true,
//     "editor.formatOnSave": true,
//     "editor.formatOnType": true,
//     //配置eslint
//     // "eslint.autoFixOnSave": true,
//     "files.autoSave": "off",
//     "eslint.validate": [
//         "javascript",
//         "javascriptreact",
//         "html",
//         {
//             "language": "vue",
//             "autoFix": true
//         },
//         {
//             "language": "html",
//             "autoFix": true
//         }
//     ],
//     "eslint.options": {
//         "extensions": [
//             ".js",
//             ".vue"
//         ],
//         "plugins": [
//             "html"
//         ]
//     },
//     //为了符合eslint的两个空格间隔原则
//     "editor.tabSize": 2,
//     "[vue]": {
//         "editor.defaultFormatter": "esbenp.prettier-vscode"
//     },
//     "vetur.format.defaultFormatterOptions": {
//         "prettier": {
//             // 格式化不加分号
//             "semi": false,
//             // 格式化为单引号
//             "singleQuote": true
//         }
//     },
//     // 在方法括号之间插入空格
//     "javascript.format.insertSpaceBeforeFunctionParenthesis": true,
//     // 关闭自动更新扩展
//     "extensions.autoUpdate": false,
//     "prettier.singleQuote": true,
//     "prettier.semi": true,
//     "vetur.format.defaultFormatter.html": "js-beautify-html",
//     "[jsonc]": {
//         "editor.defaultFormatter": "vscode.json-language-features"
//     },
//     "liveServer.settings.port": 5600,
//     "window.zoomLevel": 1,
//     "liveServer.settings.donotShowInfoMsg": true,
//     "editor.codeActionsOnSave": {
//         "source.fixAll.eslint": true
//     },
//     //   // // tab 大小为2个空格
//     //   // "editor.tabSize": 2,
//     //   // // 100 列后换行
//     //   // "editor.wordWrapColumn": 100,
//     //   // // 保存时格式化
//     //   // "editor.formatOnSave": true,
//     //   // // 开启 vscode 文件路径导航
//     //   // "breadcrumbs.enabled": true,
//     //   // // prettier 设置语句末尾不加分号
//     //   // "prettier.semi": false,
//     //   // // prettier 设置强制单引号
//     //   // "prettier.singleQuote": true,
//     //   // // 选择 vue 文件中 template 的格式化工具
//     //   // "vetur.format.defaultFormatter.html": "prettyhtml",
//     //   // // 显示 markdown 中英文切换时产生的特殊字符
//     //   // "editor.renderControlCharacters": true,
//     //   // // 设置 eslint 保存时自动修复
//     //   // "eslint.autoFixOnSave": true,
//     //   // // eslint 检测文件类型
//     //   // "eslint.validate": [
//     //   //   "javascript",
//     //   //   "javascriptreact",
//     //   //   {
//     //   //     "language": "html",
//     //   //     "autoFix": true
//     //   //   },
//     //   //   {
//     //   //     "language": "vue",
//     //   //     "autoFix": true
//     //   //   }
//     //   // ],
//     //   // // vetur 的自定义设置
//     //   // "vetur.format.defaultFormatterOptions": {
//     //   //   "prettier": {
//     //   //     "singleQuote": true,
//     //   //     "semi": false
//     //   //   }
//     //   // },
//     //   // "workbench.iconTheme": "material-icon-theme"
//     "[typescriptreact]": {
//         "editor.defaultFormatter": "esbenp.prettier-vscode"
//     },
//     "window.zoomLevel": 1,
//     "git.enableSmartCommit": true,
//     "git.autofetch": true,
//     "[html]": {
//         "editor.defaultFormatter": "vscode.html-language-features"
//     },
//     "[vue]": {
//         "editor.defaultFormatter": "esbenp.prettier-vscode"
//     },
//     "[javascript]": {
//         "editor.defaultFormatter": "esbenp.prettier-vscode"
//     }
//     // tab 大小为2个空格
//     "editor.tabSize": 2,
//     // 100 列后换行
//     "editor.wordWrapColumn": 100,
//     // 保存时格式化
//     "editor.formatOnSave": true,
//     // 开启 vscode 文件路径导航
//     "breadcrumbs.enabled": true,
//     // prettier 设置语句末尾不加分号
//     "prettier.semi": false,
//     // prettier 设置强制单引号
//     "prettier.singleQuote": true,
//     // 选择 vue 文件中 template 的格式化工具
//     "vetur.format.defaultFormatter.html": "prettyhtml",
//     // 显示 markdown 中英文切换时产生的特殊字符
//     "editor.renderControlCharacters": true,
//     // 设置 eslint 保存时自动修复
//     "eslint.autoFixOnSave": true,
//     // eslint 检测文件类型
//     "eslint.validate": [
//         "javascript",
//         "javascriptreact",
//         {
//             "language": "html",
//             "autoFix": true
//         },
//         {
//             "language": "vue",
//             "autoFix": true
//         }
//     ],
//     // vetur 的自定义设置
//     "vetur.format.defaultFormatterOptions": {
//         "prettier": {
//             "singleQuote": true,
//             "semi": false
//         }
//     },
//     "workbench.iconTheme": "material-icon-theme"
// }
// // {
// //   // 100 列后换行
// //   "editor.wordWrapColumn": 100,
// //   "files.associations": {
// //     "*.cjson": "jsonc",
// //     "*.wxss": "css",
// //     "*.wxs": "javascript"
// //   },
// //   "emmet.includeLanguages": {
// //     "wxml": "html"
// //   },
// //   "minapp-vscode.disableAutoConfig": true,
// //   "[html]": {
// //     "editor.defaultFormatter": "esbenp.prettier-vscode"
// //   },
// //   "[javascript]": {
// //     "editor.defaultFormatter": "vscode.typescript-language-features"
// //   },
// //   "[json]": {
// //     "editor.defaultFormatter": "esbenp.prettier-vscode"
// //   },
// //   "editor.formatOnPaste": true,
// //   "editor.formatOnSave": true,
// //   "editor.formatOnType": true,
// //   //配置eslint
// //   // "eslint.autoFixOnSave": true,
// //   "files.autoSave": "off",
// //   "eslint.validate": [
// //     "javascript",
// //     "javascriptreact",
// //     "html",
// //     {
// //       "language": "vue",
// //       "autoFix": true
// //     },
// //     {
// //       "language": "html",
// //       "autoFix": true
// //     }
// //   ],
// //   "eslint.options": {
// //     "extensions": [
// //       ".js",
// //       ".vue"
// //     ],
// //     "plugins": [
// //       "html"
// //     ]
// //   },
// //   //为了符合eslint的两个空格间隔原则
// //   "editor.tabSize": 2,
// //   "[vue]": {
// //     "editor.defaultFormatter": "esbenp.prettier-vscode"
// //   },
// //   "vetur.format.defaultFormatterOptions": {
// //     "prettier": {
// //       // 格式化不加分号
// //       "semi": false,
// //       // 格式化为单引号
// //       "singleQuote": true
// //     }
// //   },
// //   // 在方法括号之间插入空格
// //   "javascript.format.insertSpaceBeforeFunctionParenthesis": true,
// //   // 关闭自动更新扩展
// //   "extensions.autoUpdate": false,
// //   "prettier.singleQuote": true,
// //   "prettier.semi": false,
// //   "vetur.format.defaultFormatter.html": "js-beautify-html",
// //   "[jsonc]": {
// //     "editor.defaultFormatter": "vscode.json-language-features"
// //   },
// //   "liveServer.settings.port": 5600,
// //   "window.zoomLevel": 1,
// //   "liveServer.settings.donotShowInfoMsg": true,
// //   "editor.codeActionsOnSave": {
// //     "source.fixAll.eslint": true
// //   }
// // // tab 大小为2个空格
// // "editor.tabSize": 2,
// // // 100 列后换行
// // "editor.wordWrapColumn": 100,
// // // 保存时格式化
// // "editor.formatOnSave": true,
// // // 开启 vscode 文件路径导航
// // "breadcrumbs.enabled": true,
// // // prettier 设置语句末尾不加分号
// // "prettier.semi": false,
// // // prettier 设置强制单引号
// // "prettier.singleQuote": true,
// // // 选择 vue 文件中 template 的格式化工具
// // "vetur.format.defaultFormatter.html": "prettyhtml",
// // // 显示 markdown 中英文切换时产生的特殊字符
// // "editor.renderControlCharacters": true,
// // // 设置 eslint 保存时自动修复
// // "eslint.autoFixOnSave": true,
// // // eslint 检测文件类型
// // "eslint.validate": [
// //   "javascript",
// //   "javascriptreact",
// //   {
// //     "language": "html",
// //     "autoFix": true
// //   },
// //   {
// //     "language": "vue",
// //     "autoFix": true
// //   }
// // ],
// // // vetur 的自定义设置
// // "vetur.format.defaultFormatterOptions": {
// //   "prettier": {
// //     "singleQuote": true,
// //     "semi": false
// //   }
// // },
// // "workbench.iconTheme": "material-icon-theme"
// // }

```