var sqlOperate = require('./sqlOperate')
var articleDbUtil = {}

//  返回文章列表
articleDbUtil.getArticles = function(param) {
  return new Promise(function(resolve, reject) {
    const startIdx = param.page * param.size; 
    const sql = `select * from ${param.type} limit ${startIdx},${param.size}` 
    sqlOperate(sql, '', resolve, reject)
  })
}

//  返回专题列表
articleDbUtil.getTopics = function(param) {
  return new Promise(function(resolve, reject) {
    const startIdx = param.page * param.size; 
    const sql = `select * from topic limit ${startIdx},${param.size}` 
    sqlOperate(sql, '', resolve, reject)
  })
}

module.exports = articleDbUtil
