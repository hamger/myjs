import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

const routes = [{
    path: "*",
    redirect: '/home/articleList'
}, {
    path: '/home',
    name: 'home',
    component: function(resolve) {
        require(['./components/Home'], resolve)
    },
    children: [{
        path: 'articleList',
        name: 'articleList',
        component: function(resolve) {
            require(['./components/ArticleList'], resolve)
        }
    }, {
        path: 'bonus',
        name: 'bonus',
        component: function(resolve) {
            require(['./components/Bonus'], resolve)
        }
    }, {
        path: 'test',
        name: 'test',
        component: function(resolve) {
            require(['./components/Test'], resolve)
        }
    }]
}, {
    path: '/topic',
    name: 'topic',
    component: function(resolve) {
        require(['./components/Topic'], resolve)
    }
}, {
    path: '/login',
    name: 'login',
    component: function(resolve) {
        require(['./components/Login'], resolve)
    }
}, {
    path: '/download',
    name: 'download',
    component: function(resolve) {
        require(['./components/Download'], resolve)
    }
}, {
    path: '/myhome',
    name: 'myhome',
    component: function(resolve) {
        require(['./components/MyHome'], resolve)
    }
}, {
    path: '/write',
    name: 'write',
    component: function(resolve) {
        require(['./components/Write'], resolve)
    }
}, {
    path: '/article',
    name: 'article',
    component: function(resolve) {
        require(['./components/Article'], resolve)
    }
}, {
    path: '/edit',
    name: 'edit',
    component: function(resolve) {
        require(['./components/Edit'], resolve)
    }
}]

export default new Router({
    mode: 'history', // 没有#号的路由，默认 hash
    history: true, // 使浏览器历史功能可用
    saveScrollPosition: true, // 后退记住滚动条位置
    routes
})