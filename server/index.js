/**
 * 基于express,登录、注册的处理
 * @param app
 */
var crypto = require('crypto')
var express = require('express')
var userDbUtil = require('./userDbUtil')
var articleDbUtil = require('./articleDbUtil')
var outPut = require('./outPut')
var connection = require('./dbConnection')
var bodyParser = require("body-parser")
var app = express()
app.use(bodyParser.json()); // 该句不能省略
app.use(bodyParser.urlencoded({ extended: true })) //此项必须在 bodyParser.json下面,为参数编码

function cryp (content) {
  // 定义加密方式: md5不可逆, 此处的md5可以换成任意hash加密的方法名称
  var md5 = crypto.createHash('md5');
  md5.update(content);
  var d = md5.digest('hex');// 得到加密后的值d
  return d;
}

// 用户注册
app.post('/user/register', function(req, res) {
  // 得到请求的数据
  var user = req.body
  userDbUtil.getRegister(user).then(response => {
    if (response[0]) {
      var respResult = {
        "status": 0,
        "username": '未登录',
        "message": '邮箱/昵称已存在，请重新填写!',
        "response": response
      }
      outPut(res, JSON.stringify(respResult))
    } else {
      userDbUtil.saveUser(user).then(function(response) {
        var respResult = {
          "status": 1,
          "username": user.nickname,
          "message": '恭喜你,注册成功!',
          "response": response
        }
        outPut(res, JSON.stringify(respResult))
      })
    }
  }).catch(e => {
    console.log(e);
  });
})

// 用户是否登录
// app.get('/user/isLogin', function(req, res) {
//     var resultText;
//     if (req.session.isLogin) {
//         resultText = '已登录'
//     } else {
//         resultText = '未登录'
//     }
//     res.writeHead(200, { 'Content-type': 'text/plain' })
//     res.write(resultText)
//     res.end()
// })

// 登陆
app.get('/user/login', function(req, res) {
  var user = req.query
  var respResult = {}
  userDbUtil.getLoginer(user)
  .then(response => {
    // outPut(res, JSON.stringify(response))
    if (response[0]) {
      respResult = {
        status: 1,
        username: response[0].nickname,
        message: '登录成功!'
      }
    } else {
      respResult = {
        status: 0,
        username: '未登录',
        message: '用户名或密码错误!',
        response: response
      }
    }
    outPut(res, JSON.stringify(respResult))
  })
  .catch(e => {
    respResult = {
      status: 0,
      username: '未登录',
      message: '用户名或密码错误!'
    }
    outPut(res, JSON.stringify(respResult))
  })
})

// 获取文章列表 
app.get('/article/list',function (req,res) {
  console.log(cryp('用户名或密码错误'));
  var type = req.query.type
  var respResult = {}
  articleDbUtil.getArticleList(type)
  .then(response => {
    if (response[0]) respResult = response
    outPut(res, JSON.stringify(respResult))
  })
  .catch(() => {
    outPut(res, JSON.stringify(respResult))
  })
})

// 监听端口
const server = app.listen(8084, function() {
    // var host = server.address().address
    var port = server.address().port
    console.log("Web服务器启动成功，访问地址为 http://localhost:" + port)
})
