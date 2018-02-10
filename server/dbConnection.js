// 创建和连接 mysql 数据库
const mysql = require('mysql') 
const options = {
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: '',
  database: 'test'
}
const connection = mysql.createConnection(options)
module.exports = connection