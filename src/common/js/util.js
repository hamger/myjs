export default {
  install(Vue, options) {
    Object.defineProperty(Vue.prototype, '$util', { value: this, writable: false });
  },
  /**
   * 解析url
   * @param {string} url 
   * @return {object} 解析后的所以参数
   */
  parseUrl(url) {
    if (!url) return;
    // 解决vue-router路由把#当成hash问题，
    // 即将 http://localhost:8082/#/tjxg/content?f=ff&g=ff#345
    // 转化为 http://localhost:8082/tjxg/content?f=ff&g=ff#345
    url = url.replace(/([\s\S]*)(\#\/)([\s\S]*)/, '$1$3'); // 只去掉第一个 #/ 
    let a = document.createElement('a');
    a.href = url;
    return {
      protocol: a.protocol.replace(':', ''), // http
      host: a.hostname, // localhost
      port: a.port, // 8082
      search: a.search, // ?f=ff&g=ff
      params: (() => {
        let qs = a.search.length > 0 ? a.search.substring(1) : '',
          obj = {}
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
  },
  /**
   * 合并对象
   */
  mergeObj(target, ...sources) {
    return Object.assign(target, ...sources);
  },
  /**
   * 删除对象的某个属性
   */
  delProperty(obj, property) {
    delete obj[property]
    return obj
  },
  /**
   * Date对象转日期
   */
  dateFormat(dateArg, format) {
    if (Object.prototype.toString.call(dateArg) == "[object Date]") {
      var date = dateArg
    } else if ($.type(dateArg) == 'number' || 'string') {
      var date = new Date(dateArg)
    } else {
      throw Error('You need input a right Date argument!')
    }
    var format = format || 'yyyy/MM/dd hh:mm'
    var tf = function(i) {
      return (i < 10 ? '0' : '') + i
    };
    return format.replace(/yyyy|MM|dd|hh|mm|ss/g, function(a) {
      switch (a) {
        case 'yyyy':
          return tf(date.getFullYear());
          break;
        case 'MM':
          return tf(date.getMonth() + 1);
          break;
        case 'mm':
          return tf(date.getMinutes());
          break;
        case 'dd':
          return tf(date.getDate());
          break;
        case 'hh':
          return tf(date.getHours());
          break;
        case 'ss':
          return tf(date.getSeconds());
          break;
      }
    })
  }

};
