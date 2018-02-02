import {getReq, postReq} from '../fetch/startReq.js'

// 获取文章列表数据
export const displayArticle = ({ commit }, obj) => {
  if (!obj.page) obj.page = 0;
  if (!obj.size) obj.size = 5;
  getReq('articles', {
    type: obj.type,
    page: obj.page,
    size: obj.size
  }).then(response => {
    commit('DISPLAY_ARTICLE', {
      result: response.data,
      show: obj.type,
      page: obj.page,
      size: obj.size
    })
  }).catch(function(error) {
    console.log(error)
  })
}
// 显示专题内容
export const displayTopic = ({ commit }, obj) => {
  if (!obj.page) obj.page = 0;
  if (!obj.size) obj.size = 5;
  getReq('topics', {
    page: obj.page,
    size: obj.size
  }).then(response => {
    commit('DISPLAY_TOPIC', {
      result: response.data,
      page: obj.page,
      size: obj.size
    })
  }).catch(function(error) {
    console.log(error)
  })
}

// export const sortContent = (content, show) => {
//   content.commit('SORTCONTENT', show)
// }
// 实践中，我们会经常用到 ES2015 的 参数解构 来简化代码，如下
// 排序
export const sortContent = ({ commit }, method) => {
  commit('SORTCONTENT', method)
}

// 切换登陆注册
export const changeLogin = ({ commit }, loginway) => {
  commit('CHANGELOGIN', loginway)
}
