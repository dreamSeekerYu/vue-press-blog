## axios 二次封装

#### 一次基础封装  
```
配置拦截器 
全局数据处理  
状态处理 
全局提示
个性化方法  导入导出...
错误重试  retry

```

#### 二次封装 请求自动绑定  
```
api 更加抽象化
请求自动绑定
节流防抖  同一 api 依次单线执行

import { request，autoBind } from '@/utils/request'

// function autoBind(obj = {}) {
//   // autoBind 公用函数  和 request 放在一起  import 导入
//   const service = {}
//   Object.keys(obj).forEach(objKey => {
//     service[objKey] = function (data) {
//       return request({ ...obj[objKey], data })
//     }
//   })
//   return service
// }


// 当前文件的配置
export const testConfig = {
  queryPage: { url: '/tspeapi/usm/app/ApiAppInfo' },// 假设 请求默认都是 post 的形式
  insertApp: { url: '/tspeapi/usm/app/insertAppDTO' },
  updateApp: { url: '/tspeapi/usm/app/updateAppDTO' },
  getAppById: { url: '/tspeapi/usm/app/getAppById' },
  queryBusinessLineList: { url: '/tspeapi/usm/app/queryBusinessLineList', method: 'get' }
}

export const testService = autoBind(testConfig)

```

请求封装完成之后,  使用效果不是特别明显，建议只做 API 统一挂载在 server 函数上面即可
这个对整体的项目的影响不太大


##### 导出文件 下载文件

```
export function getExport(url, param, fileName) {
  return axios.request({
    url: url,
    data: param,
    responseType: 'arraybuffer', // 代表内存之中的一段二进制数据 必须加
    method: 'post'
  }).then(res => {
    // const filename =  fileName;
    fileDownload(res.data, fileName)
    try {
      const blob = new Blob([res.data])
      const reader = new FileReader()
      reader.readAsText(blob, 'utf-8')
      reader.onload = function(e) {
        const data = JSON.parse(JSON.stringify(reader.result))
        if (data.status !== 0) {
          // Message({
          //   showClose: true,
          //   message: data.msg
          // })
        }
      }
    } catch (e) {
      console.log(e)
    }
  }
  )
}
export function getExportBypeData(url, param) {
  return axios.request({
    url: url,
    data: param,
    method: 'post'
  }).then(({ data }) => {
    const { fileData, fileName } = data.data
    fileDownload(new Uint8Array(fileData), fileName)
  })
}
export function fileDownload(data, fileName) {
  const blob = new Blob([data], {
    type: 'application/octet-stream'
  })
  if (fileName !== '模板下载.xlsx') {
    fileName = fileName
  }
  if (typeof window.navigator.msSaveBlob !== 'undefined') {
    window.navigator.msSaveBlob(blob, fileName)
  } else {
    var blobURL = window.URL.createObjectURL(blob)
    var tempLink = document.createElement('a')
    tempLink.style.display = 'none'
    tempLink.href = blobURL
    tempLink.setAttribute('download', fileName)
    if (typeof tempLink.download === 'undefined') {
      tempLink.setAttribute('target', '_blank')
    }
    document.body.appendChild(tempLink)
    tempLink.click()
    document.body.removeChild(tempLink)
    window.URL.revokeObjectURL(blobURL)
  }
}
```