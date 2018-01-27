var sqlOperate = require('./sqlOperate')
var articleDbUtil = {}

//  返回文章列表
articleDbUtil.getArticleList = function(type) {
  return new Promise(function(resolve, reject) {
    var sql = 'select * from ' + type 
    sqlOperate(sql, '', resolve, reject)
  })
}

module.exports = articleDbUtil
