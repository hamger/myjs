/**
 * 基于express,登录、注册的处理
 * @param app
 */

var express = require('express')
var userDbUtil = require('./userDbUtil')
var appResponse = require('./app-response')
var connection = require('./dbConnection')
var bodyParser = require("body-parser");
var app = express()
app.use(bodyParser.json()); // 该句不能省略
app.use(bodyParser.urlencoded({ extended: true })) //此项必须在 bodyParser.json 下面,为参数编码

// 用户注册
app.post('/user/register', function(req, res) {
    // 得到请求的数据
    var user = req.body
    console.log('user：' + user)
    userDbUtil.getUserByRegister(user).then(function(response) {
        if (response[0]) {
            var respResult = {
                "status": 0,
                "username": '未登录',
                "message": '邮箱/电话/昵称已注册,请重新注册!'
            }
            appResponse(res, JSON.stringify(respResult))
            console.log(respResult.message)
        } else {
            userDbUtil.saveUser(user).then(function() {
                var respResult = {
                    "status": 1,
                    "username": user.account,
                    "message": '恭喜你,注册成功!'
                }
                console.log(respResult.message)
                appResponse(res, JSON.stringify(respResult))
            })
        }
    }, function(error) {
        console.log('[错误提示] ', error.message)
    })
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
    userDbUtil.getUserByLogin(user).then(function(response) {
        if (response[0]) {
            respResult = {
                status: 1,
                username: user.account,
                message: '登录成功!'
            }
        } else {
            respResult = {
                status: 0,
                username: '未登录',
                message: '用户名或密码错误!'
            }
        }
        appResponse(res, JSON.stringify(respResult))
    }, function() {
        respResult = {
            status: 0,
            username: '未登录',
            message: '用户名或密码错误!'
        }
        appResponse(res, JSON.stringify(respResult))
    })
})

// 监听端口
const server = app.listen(8082, function() {
    var host = server.address().address
    var port = server.address().port
    console.log("Web服务器启动成功，访问地址为 http://localhost:" + port)
})
