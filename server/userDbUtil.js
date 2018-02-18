var sqlOperate = require('./sqlOperate')
var userDbUtil = {}

// 注册时,查找用户
userDbUtil.getRegister = function(user) {
    var promise = new Promise(function(resolve, reject) {
        var sql = `select * from users where account = ? or nickname = ?`
        var params = [user.account, user.nickname]
        sqlOperate(sql, params, resolve, reject)
    })
    return promise
}

// 保存用户
userDbUtil.saveUser = function(user) {
    var promise = new Promise(function(resolve, reject) {
        var sql = `insert into users(account, nickname, password) values(?, ?, ?)`
        var params = [user.account, user.nickname, user.password]
        sqlOperate(sql, params, resolve, reject)
    })
    return promise
}

// 登录时查找用户
userDbUtil.getLoginer = function(user) {
    var promise = new Promise(function(resolve, reject) {
        var sql = `select * from users where account = ? and password = ?`
        var params = [user.account, user.password]
        sqlOperate(sql, params, resolve, reject)
    })
    return promise
}

// 查找用户信息
userDbUtil.getUserInfo = function(user) {
    var promise = new Promise(function(resolve, reject) {
        var sql = `select * from users where id = ?`
        var params = [user.id]
        sqlOperate(sql, params, resolve, reject)
    })
    return promise
}

// 修改用户信息
userDbUtil.setUserInfo = function(user) {
    var promise = new Promise(function(resolve, reject) {
        var sql = `UPDATE users SET nickname = ? WHERE id = ?`
        var params = [user.nickname, user.id];
        if (user.headimg) {
            sql = `UPDATE users SET nickname = ?, headimg = ? WHERE id = ?`
            params = [user.nickname, user.headimg, user.id]
        }
        sqlOperate(sql, params, resolve, reject)
    })
    return promise
}

module.exports = userDbUtil