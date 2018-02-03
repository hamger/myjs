<template>
<div class="container-myjs" :class="{ nightMode: night}">
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <div :class="{active: tabIndex === 0}" @click="tabIndex = 0"> 
        <router-link to="/article/articleList"><i class="fa fa-home"></i> <span> 首页</span></router-link>
      </div>
      <div :class="{active: tabIndex === 1}"  @click="tabIndex = 1">
        <router-link to="/topic"><i class="fa fa-th"></i> <span> 专题</span></router-link>
      </div>
      <div :class="{active: tabIndex === 2}"  @click="tabIndex = 2">
        <router-link to="/download"><i class="fa fa-mobile fa-lg"></i> <span>APP下载</span></router-link>
      </div>
      <div  @click="tabIndex = 3" :class="{
        active: tabIndex === 3
      }">
        <div class="drop-menu">
          <a href="javascript:;"><i class="fa fa-user"></i> <span>{{ $store.state.userName }}</span></a>
          <ul class="drop-list" v-if="Number($store.state.myid) > 0">
            <li><router-link to="/myhome"><i class="fa fa-user-circle"></i> <span>我的主页</span></router-link></li>
            <li><router-link to="/write"><i class="fa fa-pencil"></i> <span>写文章</span></router-link></li>
            <li @click="signOut"><a href="javascript:;"><i class="fa fa-sign-out"></i> <span>退出登录</span></a></li>
          </ul>
          <ul class="drop-list" v-else>
            <li @click="changeLogin('login')"><router-link to="/login"><i class="fa fa-sign-in"></i> <span>登录</span></router-link></li>
            <li @click="changeLogin('register')"><router-link to="/login"><i class="fa fa-plus-circle"></i> <span>注册</span></router-link></li>
            <!-- <li @click="night = !night"><a href="javascript:;"><i class="fa fa-exchange"></i> <span>{{night ? '夜间模式' : '日间模式'}}</span></a></li> -->
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <!-- <div>{{statess}}</div> -->
  <div class="home">
    <router-view transition='display' transition-mode='out-in'></router-view>
  </div>
</div>
</template>
<script>
import { mapGetters, mapActions } from 'vuex'

export default {
  data () {
    return {
      tabIndex: 0,
      night: false,
      // 实例data属性中的 this 不能省略，template中可以省略，template中的所有变量都是组件实例的属性和方法
      statess: this.$store.state.userName 
    }
  },
  methods: {
    changeLogin (loginway) {
      this.$store.dispatch('changeLogin', loginway)
    },
    signOut () {
      this.$store.state.userName = '游客'
      this.$store.state.account = ''
      this.$store.state.myid = 0
    }
  },
  created () {
  }
}
</script>
<style lang='less'>
@import url('./common/css/common.less');

.nightMode {
    position: absolute;
    top:0;
    bottom:0;
    right:0;
    left:0;
    background-color: rgba(85, 85, 85, 0.79);
    z-index: 99 !important;
}

nav.navbar {
  background-color: #e6ecef;
  font-size: 16px;
  padding: 0;
  margin: 0;
  text-align: center;
  .container {
    padding: 0;
    & > div {
      a {
        cursor: pointer;
        display: inline-block;
        height: 40px;
        line-height: 40px;
        padding: 0 10px;
        color: #000;
      }
      & > div {
        display: inline-block;
      }
      a:hover {
        .active();
      }
    }
  }
}

.drop-menu {
  position: relative;
  .drop-list {
    background-color: rgba(230, 236, 239, 0.8);
    display: none;
    z-index: 2;
    position: absolute;
    right: 0;
    top: 40px;
    padding: 0;
    li {
      min-width: 108px;
      text-align: right;
    }
    li:hover {
      .active();
    }
  }
}
.drop-menu:hover .drop-list {
  display: block;
}

.home{
  max-width: 900px;
  margin:0 auto;
  position: relative; 
}
</style>