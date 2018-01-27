var sqlOperate = require('./sqlOperate')
var userDbUtil = {}

// 注册时,查找用户
userDbUtil.getRegister = function(user) {
  var promise = new Promise(function(resolve, reject) {
    // var sql = `select * from users where account = ? or nickname = ?`
    var sql = `select * from users where account = ?`
    var params = [user.account]
    sqlOperate(sql, params, resolve, reject)
  })
  return promise
}

// 保存用户
userDbUtil.saveUser = function (user) {
  var promise = new Promise(function(resolve, reject) {
    var sql = `insert into users(account, nickname, password) values(?, ?, ?)`
    var params = [user.account, user.nickname, user.password]
    sqlOperate(sql, params, resolve, reject)
  })
  return promise
}

// 登录时查找用户
userDbUtil.getLoginer = function (user) {
  var promise = new Promise(function(resolve, reject) {
    var sql, params;
    sql = `select * from users where account = ? and password = ?`
    params = [user.account, user.password]
    sqlOperate(sql, params, resolve, reject)
  })
  return promise
}

module.exports = userDbUtil
