/**
 * Created by zhouxiong on 16/12/19.
 */

var connection = require('./dbConnection')
var userDbUtil = {}

// 注册时,查找用户
userDbUtil.getUserByRegister = function(user) {
    var promise = new Promise(function(resolve, reject) {
        var sql = 'select * from users where account = ? or nickname = ?'
        var params = [user.account, user.nickname]      
        connection.connect(function() {
            connection.query(sql, params, function(error, response) {
                if (error) {
                    reject(error)
                } else {
                    resolve(response)
                }
            })
        })
    })
    return promise
}


// 保存用户
userDbUtil.saveUser = function(user) {
    var promise = new Promise(function(resolve, reject) {
        var sql = 'insert into users(account, nickname, password) values(?, ?, ?)'
        var params = [user.account, user.nickname, user.password] 
        connection.connect(function() {
            connection.query(sql, params, function(error, response) {
                if (error) {
                    reject(error)
                } else {
                    resolve(response)
                }
            })
        })
    })
    return promise
}

// 登录时查找用户
userDbUtil.getUserByLogin = function(user) {
    var promise = new Promise(function(resolve, reject) {
        var sql, params;
        sql = 'select * from users where account = ? and password = ?'
        params = [user.account, user.password]
        connection.connect(function() {
            connection.query(sql, params, function(error, response) {
                if (error) {
                    reject(error)
                } else {
                    resolve(response)
                }
            })
        })
    })
    return promise
}

module.exports = userDbUtil
