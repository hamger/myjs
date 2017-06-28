<template>
<div class="container">
  <div :class="{sidebarNav:state, topNav:!state}">
    <ul class="dropdown">
      <li :class="{active: show === 'home'}" @click="show = 'home'">
        <router-link to="/home/article"><i class="fa fa-home"></i><span>&nbsp;&nbsp;首页</span></router-link>
      </li>
      <li :class="{active: show === 'topic'}" @click="show = 'topic'">
        <router-link to="/topic/topic_article"><i class="fa fa-th"></i><span>&nbsp;&nbsp;专题</span></router-link>
      </li>
      <li :class="{active: show === 'download'}" @click="show = 'download'">
        <router-link to="/download"><i class="fa fa-mobile"></i><span>&nbsp;&nbsp;APP下载</span></router-link>
      </li>
    </ul>
    <ul class="nav-user">
      <li @click="state = !state">
        <a><i class="fa fa-exchange"></i><span>&nbsp;&nbsp;显示模式</span></a>
      </li>
      <li>
        <router-link to="/login"><i class="fa fa-sign-in"></i><span>&nbsp;&nbsp;{{ $store.state.userName }}</span></router-link>
      </li>
    </ul>
  </div>
  <div class="home">
    <router-view transition = 'display' transition-mode = 'out-in'></router-view>
  </div>
</div>
</template>
<script>
import { mapGetters,mapActions } from 'vuex'
export default {
  data () {
    return {
      show:'home',
      state:true
    }
  }
}
</script>
<style lang='less'>
.container {
  height: 100%;
}

.sidebarNav {
  height: 100%;
  width: 170px;
  float: left;
  background-color: #4E4E4E;
  color: white;
  position: relative;

  .dropdown {
   position: absolute;
   top: 0;
  }

  .nav-user {
   position: absolute;
   bottom: 0;
  }
}

.topNav {
  width: 100%;
  height: 40px;
  background-color: #4E4E4E;
  color: white;
  position: relative;

  .dropdown {
    position: absolute;
    left: 0;
  }

  .nav-user {
    position: absolute;
    right: 0;
  }

  li{
    float: left;
  }
}

.home{
  width: 100%;
  height: 100%;
  margin-left: 170px;
  position: relative;
}

  .fa-mobile{
    font-size: 26px;
    position: relative;
    top: 3px;
  }


  .dropdown li{
    font-weight: normal;
    text-align: left;
    height: 40px;
    font-size: 14px;
  }
  .dropdown li a{
    display: block;
    padding-left: 8px;
    line-height: 40px;
    width: 170px;
    height: 40px;
    color: #999999;
  }
  .dropdown li:hover{
    background-color: #e78170;
  }
  .dropdown li:hover a{
    color: #ffffff;
  }

  .nav-user li a{
    line-height: 40px;
    color: #999999;
    font-weight: normal;
    text-align: left;
    width: 170px;
    height: 40px;
    font-size: 14px;
    padding-left: 8px;
  }
  .nav-user li:hover{
    background-color: #e78170;
  }
  .nav-user li:hover a{
    color: #ffffff;
  }



/*@media screen and (max-width: 1100px){
  .home{
    margin-left: 40px;
  }
  .nav-user li{
      width: 40px;
      height: 30px;
      overflow: hidden;
  }
  .sidebarNav {
    transition: all 0.5s;
    width: 40px;
    overflow: hidden;
  }
  .sidebarNav li{
    padding: 20px 0;
  }
  .sidebarNav li a{
    padding: 0 auto;
    margin:0 auto;
  }
  .sidebarNav i{
    font-size: 30px;
  }
  .sidebarNav .fa-mobile{
    margin-right: 8px;
    font-size: 50px;
  }
}*/
</style>