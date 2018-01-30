<template>
<div class="container-myjs" :class="{ nightMode: state}">
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <div :class="{active: tabIndex === 0}" @click="tabIndex = 0">
        <router-link to="/article/articleList"><i class="fa fa-home"></i><span> 首页</span></router-link>
      </div>
      <div :class="{active: tabIndex === 1}"  @click="tabIndex = 1">
        <router-link to="/topic/topicList"><i class="fa fa-th"></i><span> 专题</span></router-link>
      </div>
      <div :class="{active: tabIndex === 2}"  @click="tabIndex = 2">
        <router-link to="/download"><i class="fa fa-mobile fa-lg"></i><span> APP下载</span></router-link>
      </div>
      <!-- <div :class="{active: tabIndex === 3}"  @click="tabIndex = 3">
        <a><i class="fa fa-exchange"></i><span> {{ state?'夜间模式':'日间模式' }}</span></a>
      </div> -->
      <div :class="{active: tabIndex === 4}"  @click="tabIndex = 4">
        <router-link to="/login"><i class="fa fa-sign-in"></i><span> {{ $store.state.userName }}</span></router-link>
      </div>
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
      tabIndex: 0,
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
    div {
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
  max-width: 900px;
  margin:0 auto;
  position: relative; 
}
</style>