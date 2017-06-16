<template>
<div class="container">
  <div class="sidebar">
    <ul class="dropdown">
      <li :class="{active: show === 'home'}">
        <router-link @click="show = 'home'" to="/home/article"><i class="fa fa-home"></i><span>&nbsp;&nbsp;首页</span></router-link>
      </li>
      <li :class="{active: show === 'topic'}">
        <router-link @click="show = 'topic'" to="/topic/topic_article"><i class="fa fa-th"></i><span>&nbsp;&nbsp;专题</span></router-link>
      </li>
      <li :class="{active: show === 'download'}">
        <router-link @click="show = 'download'" to="/download"><i class="fa fa-mobile"></i><span>&nbsp;&nbsp;APP下载</span></router-link>
      </li>
    </ul>
    <ul class="nav-user">
      <li>
        <a href="#"><i class="fa fa-font"></i><span>&nbsp;&nbsp;显示模式</span></a>
      </li>
      <li>
        <router-link to="/login"><i class="fa fa-sign-in"></i><span>&nbsp;&nbsp;{{ $store.state.userName }}</span></router-link>
      </li>
    </ul>
  </div>
  <div class="home">
    <router-view transition = 'display' transition-mode = 'out-in'></router-view>
  </div>
<!--   <div class="rightbar">
    <nav>
      <router-link to="/login">{{ $store.state.userName }}</router-link>
    </nav>
  </div> -->
</div>
</template>
<script>
import { mapGetters,mapActions } from 'vuex'
export default {
  data () {
    return {
      show:'home'
    }
  }
}
</script>
<style>

html,body {
  height: 100%;
  margin: 0;
  padding: 0;
}

.container {
  height: 100%;
}

.sidebar {
  height: 100%;
  width: 178px;
  float: left;
  background-color: #4E4E4E;
  color: white;
  position: relative;
}

.dropdown {
  position: absolute;
  top: 0;
}

.nav-user {
  position: absolute;
  bottom: 0;
}

  @media screen and (max-width: 1100px){
    .home{
      width: calc(100% - 80px);
      margin-right: 0;
    }
  }
  @media screen and (max-width: 1300px){
    .home{
      width: calc(100% - 240px);
      margin-left: 40px;
    }
    .nav-user li{
        width: 40px;
        height: 30px;
        overflow: hidden;
    }
    .sidebar{
      transition: all 0.5s;
      width: 40px;
      overflow: hidden;
    }
    .sidebar li{
      padding: 20px 0;
    }
    .sidebar li a{
      padding: 0 auto;
      margin:0 auto;
    }
    .sidebar i{
      font-size: 30px;
    }
    .sidebar .fa-mobile{
      margin-right: 8px;
      font-size: 50px;
    }
  }
</style>