<template>
<div>
  <div class="article-page">
    <nav>
      <span class="search clearfloat">
        <span class="input">
          <input type="search" placeholder="搜索">
        </span>
        <span class="search-icon"><i class="fa fa-search"></i></span>
      </span>
    </nav>
    <div class="article-list">
      <ul class="btn-group">
        <li :class="{active: show === 'hot'}" @click="displayTopic('hot')">
          <router-link to="/topic/topicList" >热门</router-link>  
        </li>
        <li :class="{active: show === 'recommend'}" @click="displayTopic('recommend')">
          <router-link to="/topic/topicList" >推荐</router-link>
        </li>
        </ul>
    </div>
    <router-view></router-view>
  </div>
</div>
</template>
<script>
  import { mapGetters,mapActions } from 'vuex'
  export default {
    computed: mapGetters({
      show:'getShow_2'
    }),
    methods: mapActions([
      'displayTopic'
    ])
  }
</script>
<style lang='less' scoped>

</style>