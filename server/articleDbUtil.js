var connection = require('./dbConnection')
var articleDbUtil = {}

//  返回文章列表
articleDbUtil.getArticleList = function(type) {
    return new Promise(function(resolve, reject) {
        var sql = 'select * from ' + type 
        connection.connect(function() {
            connection.query(sql,function(error, response) {
                if (error) {
                    reject(error)
                } else {
                    resolve(response)
                }
            })
        })
    })
}

module.exports = articleDbUtil
