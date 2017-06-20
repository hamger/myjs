import Vue from 'vue'
import Router from 'vue-router'
// import Home from '@/components/Home'
// import ArticleList from '@/components/ArticleList'
// import Topic from '@/components/Topic'
// import Topic_article from '@/components/Topic_article'
// import Bonus from '@/components/Bonus'
// import Login from '@/components/Login'
// import Download from '@/components/Download'

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
    }]
}, {
    path: '/topic',
    name: 'topic',
    component: function(resolve) {
        require(['./components/Topic'], resolve)
    },
    children: [{
        path: 'topic_article',
        name: 'topic_article',
        component: function(resolve) {
            require(['./components/Topic_article'], resolve)
        }
    }]
}, {
    path: '/bonus',
    name: 'bonus',
    component: function(resolve) {
        require(['./components/Bonus'], resolve)
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
}]


export default new Router({
        history: true, // 是浏览器历史功能可用
        saveScrollPosition: true, // 后退记住滚动条位置
        routes
    })
    // routes: [{
    //     path: "*",
    //     redirect: '/home/articleList'
    // }, {
    //     path: '/home',
    //     name: 'home',
    //     component: Home,
    //     children: [{
    //         path: 'articleList',
    //         name: 'articleList',
    //         component: ArticleList
    //     }]
    // }, {
    //     path: '/topic',
    //     name: 'topic',
    //     component: Topic,
    //     children: [{
    //         path: 'topic_article',
    //         name: 'topic_article',
    //         component: Topic_article
    //     }]
    // }, {
    //     path: '/bonus',
    //     name: 'bonus',
    //     component: Bonus
    // }, {
    //     path: '/login',
    //     name: 'login',
    //     component: Login
    // }, {
    //     path: '/download',
    //     name: 'download',
    //     component: Download
    // }]
