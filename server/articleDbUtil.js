var sqlOperate = require('./sqlOperate')
var articleDbUtil = {}

//  获取文章列表
articleDbUtil.getArticles = function(param) {
  return new Promise(function(resolve, reject) {
    let sql = ''
    if (param.mine) {
      // 按发布时间降序排序
      sql = `select * from articles where author = ? order by publish_time desc`
      sqlOperate(sql, [param.mine], resolve, reject)
    } else {
      const startIdx = param.page * param.size;
      if (param.type === 'hot') {
        sql = `select * from articles order by read_num desc limit ${startIdx}, ${param.size}`
      } else if (param.type === 'recommend') {
        sql = `select * from articles order by like_num desc limit ${startIdx}, ${param.size}`
      } else {
        sql = `select * from articles order by publish_time desc limit ${startIdx}, ${param.size}` 
      }
      sqlOperate(sql, '', resolve, reject)
    }
  })
}

//  获取专题列表
articleDbUtil.getTopics = function(param) {
  return new Promise(function(resolve, reject) {
    const startIdx = param.page * param.size; 
    const sql = `select * from topics limit ${startIdx},${param.size}` 
    sqlOperate(sql, '', resolve, reject)
  })
}

// 添加文章
articleDbUtil.addArticle = function(param) {
  return new Promise(function(resolve, reject) {
    const sql = `insert into articles(author, title, content, publish_time, read_num, like_num, comment_num)
    values(?, ?, ?, ?, ?, ?, ?)` 
    const params = [param.author, param.title, param.content, new Date(), 0, 0, 0]
    sqlOperate(sql, params, resolve, reject)
  })
}

// 删除文章
articleDbUtil.delArticle = function(param) {
  return new Promise(function (resolve, reject) {
    const sql = `DELETE FROM articles WHERE id = ?`
    sqlOperate(sql, [param.id], resolve, reject)
  })
}

// 修改文章
articleDbUtil.updArticle = function(param) {
  return new Promise(function (resolve, reject) {
    const sql = `UPDATE articles SET title = ?, content = ? WHERE id = ?`
    const params = [param.title, param.content, param.id]
    sqlOperate(sql, params, resolve, reject)
  })
}

// 获取某一篇文章的信息
articleDbUtil.getArticle = function(param) {
  return new Promise(function (resolve, reject) {
    const sql = `select * from articles where id = ?`
    sqlOperate(sql, [param.id], resolve, reject)
  })
}

module.exports = articleDbUtil
