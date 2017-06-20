// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App.vue'
import router from './router.js'
import store from './vuex/store.js'
import FastClick from 'fastclick'
import axios from 'axios'
Vue.prototype.$http = axios

Vue.config.productionTip = false
// Vue.config.devtools = true
FastClick.attach(document.body)

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,	
  render: h => h(App)
})
