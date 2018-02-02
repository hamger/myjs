/**
 * 解析url
 * @param {string} url 
 * @return {object} 解析后的所以参数
 */
const parseUrl = (url) => {
  if (!url) return;
  // 解决vue-router路由把#当成hash问题，
  // 即将 http://localhost:8082/#/tjxg/content?f=ff&g=ff#345
  // 转化为 http://localhost:8082/tjxg/content?f=ff&g=ff#345
  url = url.replace(/([\s\S]*)(\#\/)([\s\S]*)/, '$1$3'); // 只去掉第一个 # 号
  let a = document.createElement('a');
  a.href = url;
  return {
    protocol: a.protocol.replace(':', ''), // http
    host: a.hostname, // localhost
    port: a.port, // 8082
    search: a.search, // ?f=ff&g=ff
    params: (() => {
      let qs = a.search.length > 0 ? a.search.substring(1) : '', obj = {}
      if (qs) {
        let arr1 = qs.split('&')
        for (var i = 0; i < arr1.length; i++) {
          let arr2 = arr1[i].split('=')
          obj[arr2[0]] = arr2[1]
        }
      }
      return obj
    })(), // {f: 'ff', g: 'gg'} 
    hash: a.hash.replace('#', ''), // 345
    path: a.pathname, // /tjxg/content
    // '/tjxg/content'.match(/\/([^\/?#]+)$/i) output: ["/content", "content", index: 5, input: "/tjxg/content"]
    filename: (a.pathname.match(/\/([^\/?#]+)$/i) || [, ''])[1] // content
  }
}

export {
  parseUrl
}