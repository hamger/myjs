<template>
<div>
  <nav class="home-nav">
    <span @click="index = 0" :class="{fir: index === 0}">
      <router-link to='articleList'>发现</router-link> 
    </span>
    <span @click="index = 1" :class="{fir: index === 1}">
      <router-link to='bonus'>精选</router-link> 
    </span>
    <span @click="index = 2" :class="{fir: index === 2}">
      <router-link to='test'>Test</router-link> 
    </span>
  </nav>
  <router-view></router-view>
</div>
</template>
<script>
import { mapGetters, mapActions } from 'vuex'

export default{
  data () {
    return {
      index: 0
    }
  },
  computed: {
    ...mapGetters({
      show: 'getShow'
    })
  },
  methods: {
    ...mapActions({
      displayArticle: 'displayArticle'
    })
  },
  created: function  () {
    this.displayArticle({type: 'new'})
  }
}
</script>
<style lang='less' scoped>
@import url('../common/css/common.less');
.home-nav {
  height: 44px;
  border-bottom: 2px solid rgba(85, 85, 85, 0.12);
  font-size: 12px;
  span {
    display: inline-block;
    line-height: 44px;
    height: 44px;
    margin-left: 10px;
    transition: all 0.3s;
    &:hover {
      background-color: #eee;
    }
    a {
      padding: 10px 15px;
    }
  }
  .fir {
    border-bottom: 1px solid #000;
  }
}
</style>
