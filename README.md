# myjs
仿简书网站，现阶段主要包括文章的展示和管理、用户的个人信息编辑、登录注册等。在此基础上进行个人实验性技术探索与研究。因为是个人技术探索类的项目，所以存在一些测试代码，以及不统一的表达方式。

## Build Setup
首先下载依赖
``` bash
npm install
```
在MySQL中新建数据库，将`test.sql`导入该数据库，将`/server/dbConnection.js`中的数据库连接配置项修改成你的配置，开启`mysql`，命令行中输入
```
mysql.server start
```
然后开启`node`服务器，输入
```
node server
```
再开一个命令行窗口，输入
```
npm run dev
```
最后在浏览器中输入`http://localhost:8085`，即可看到网站。
