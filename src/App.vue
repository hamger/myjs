<template>
<div class="container" :class="{ nightMode: state}">
  <header>
    <ul class="leftNav">
      <li :class="{active: show === 'home'}" @click="show = 'home'">
        <router-link to="/article/articleList"><i class="fa fa-home"></i><span> 首页</span></router-link>
      </li>
      <li :class="{active: show === 'topic'}" @click="show = 'topic'">
        <router-link to="/topic/topicList"><i class="fa fa-th"></i><span> 专题</span></router-link>
      </li>
      <li :class="{active: show === 'download'}" @click="show = 'download'">
        <router-link to="/download"><i class="fa fa-mobile"></i><span> APP下载</span></router-link>
      </li>
    </ul>
    <ul class="rightNav">
      <li @click="state = !state">
        <a><i class="fa fa-exchange"></i><span> {{ state?'夜间模式':'日间模式' }}</span></a>
      </li>
      <li>
        <router-link to="/login"><i class="fa fa-sign-in"></i><span> {{ $store.state.userName }}</span></router-link>
      </li>
    </ul>
  </header>
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
@import url('./common/common.less');
.container {
  overflow: auto;
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
  
header {
  position: relative;
  height: 40px;
  
  .leftNav {
    position: absolute;
    left: 0;
  }

  .rightNav {
    position: absolute;
    right: 0;
  }
  
  li {
    float: left;
    text-align: center;
    height: 40px;
    line-height: 40px;
    width: 100px;
    font-size: 16px;
    cursor: pointer;

    a {
      color: #000;
      display: inline-block;
      height: 100%;
      width: 100%;
    }
  }

  li:hover {
    .active();
  }
}

.home{
  width: 80%;
  margin:0 auto;
  position: relative; 
}

.fa-mobile{
  font-size: 26px;
}
</style>