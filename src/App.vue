<template>
<div class="container-myjs" :class="{ nightMode: state}">
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <div class="navBtn"><router-link to="/article/articleList"><i class="fa fa-home"></i><span> 首页</span></router-link></div>
      <div class="navBtn"><router-link to="/topic/topicList"><i class="fa fa-th"></i><span> 专题</span></router-link></div>
      <div class="navBtn"><router-link to="/download"><i class="fa fa-mobile fa-lg"></i><span> APP下载</span></router-link></div>
      <!-- <div class="navBtn"><a><i class="fa fa-exchange"></i><span> {{ state?'夜间模式':'日间模式' }}</span></a></div> -->
      <div class="navBtn"><router-link to="/login"><i class="fa fa-sign-in"></i><span> {{ $store.state.userName }}</span></router-link></div>
    </div>
  </nav>
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
      show:'home',
      state:false
    }
  },
  mounted() {
  }
}
</script>
<style lang='less'>
@import url('./common/css/common.less');
.container-myjs {
}

.nightMode {
    position: absolute;
    top:0;
    bottom:0;
    right:0;
    left:0;
    background-color: rgba(85, 85, 85, 0.79);
    z-index: 9999 !important;
}

nav.navbar {
  background-color: #e6ecef;
  font-size: 16px;
  padding: 0;
  margin: 0;
  text-align: center;
  .container {
    padding: 0;
    .navBtn {
      a {
        cursor: pointer;
        display: inline-block;
        height: 40px;
        line-height: 40px;
        padding: 0 10px;
        color: #000;
      }

      a:hover {
        .active();
      }
    }
  }
}

.home{
  padding: 0 20px;
  max-width: 900px;
  margin:0 auto;
  position: relative; 
}
</style>