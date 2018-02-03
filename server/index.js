/**
 * 基于express,登录、注册的处理
 */
const express = require('express')
const fs = require('fs')
const path = require('path')
const crypto = require('./crypto')
const util = require('./util')
const userDbUtil = require('./userDbUtil')
const articleDbUtil = require('./articleDbUtil')
const outPut = require('./outPut')
const connection = require('./dbConnection')
const bodyParser = require("body-parser")
const app = express()
app.use(bodyParser.json()); // 该句不能省略
app.use(bodyParser.urlencoded({ extended: true })) //此项必须在 bodyParser.json下面,为参数编码

// 获取公钥
app.get('/key', (req, res) => {
  let public_key = fs.readFileSync('./rsa_public_key.pem').toString();
  // let public_key = fs.readFileSync(path.join(__dirname, "rsa_public_key.pem")).toString();
  outPut(res, public_key);
})

const success = { flag: true }
const error = { flag: false }

// 用户注册
app.post('/user/register', function(req, res) {
  // 得到请求的数据
  let user = req.body
  let private_key = fs.readFileSync('./rsa_private_key.pem').toString()
  // let private_key = fs.readFileSync(path.join(__dirname, "rsa_public_key.pem")).toString()
  user.account = crypto.privateDecrypt(user.account, private_key).toString()
  user.nickname = crypto.decrypt(user.nickname, 'DwYCjqFx5YCx0h0S')
  userDbUtil.getRegister(user).then(response => {
    if (response[0]) {
      // response = [{account:"123@qq.com",id:21,nickname:"Hanger",password: '123'}]
      outPut(res, JSON.stringify(util.mergeObj(error, {message: '邮箱/昵称已存在，请重新填写！'})))
    } else {
      userDbUtil.saveUser(user).then(response => {
        // response 是数据库操作信息 如 {affectedRows: 1,insertId: 22,serverStatus2,...}
        outPut(res, JSON.stringify(util.mergeObj(success, {message: '注册成功！'})))
      })
    }
  }).catch(e => {
    console.log(e);
  })
})

// 登陆
app.get('/user/login', function(req, res) {
  userDbUtil.getLoginer(req.query).then(response => {
    if (response[0]) {
      // response = [{account:"123@qq.com",id:21,nickname:"Hanger",password: '123'}]
      outPut(res, JSON.stringify(util.mergeObj(success, util.delProperty(response[0], 'password'))))
    } else {
      outPut(res, JSON.stringify(util.mergeObj(error, {message: '用户名或密码错误！'})))
    }
  }).catch(e => {
    outPut(res, JSON.stringify(e))
  })
})

// 获取文章列表 
app.get('/articles', function(req, res) {
  articleDbUtil.getArticles(req.query).then(response => {
    // response 是包含文章信息的数组
    outPut(res, JSON.stringify(response))
  }).catch(e => {
    outPut(res, JSON.stringify(e))
  })
})

// 获取专题列表 
app.get('/topics', function(req, res) {
  articleDbUtil.getTopics(req.query).then(response => {
    // response 是包含专题信息的数组
    outPut(res, JSON.stringify(response))
  }).catch(e => {
    outPut(res, JSON.stringify(e))
  })
})

// 添加文章
app.post('/article/add', function(req, res) {
  let article = req.body
  console.log(article)
})

// 监听端口
const server = app.listen(8084, function() {
  // let host = server.address().address
  let port = server.address().port
  console.log("Web服务器启动成功，访问地址为 http://localhost:" + port)
})

// 用户是否登录
// app.get('/user/isLogin', function(req, res) {
//     let resultText;
//     if (req.session.isLogin) {
//         resultText = '已登录'
//     } else {
//         resultText = '未登录'
//     }
//     res.writeHead(200, { 'Content-type': 'text/plain' })
//     res.write(resultText)
//     res.end()
// })