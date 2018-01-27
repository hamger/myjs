<template>
<div>
  <div class="article-page">
    <nav>
      <span class="nav-text fir"><a href="#">发现</a></span>
      <span class="nav-text">
        <router-link to='/bonus'>2015精选</router-link> 
      </span>
      <span class="nav-text">
        <router-link to='/test'>Test</router-link> 
      </span>
      <span class="search clearfloat">
        <span class="input">
          <input type="search" placeholder="搜索">
        </span>
        <span class="search-icon"><i class="fa fa-search"></i></span>
      </span>
    </nav>
    <div class="article-list">
      <ul class="btn-group">
        <li :class="{active: show === 'new'}" @click="displayArticle('new')">
          <router-link  to="/home/articleList">新上榜</router-link>   
        </li>
        <li :class="{active: show === 'weekhot'}" @click="displayArticle('weekhot')">
          <router-link  to="/home/articleList">七日热门</router-link> 
        </li>
        <li :class="{active: show === 'monthhot'}" @click="displayArticle('monthhot')">
          <router-link  to="/home/articleList">三十日热门</router-link> 
        </li>
        <li :class="{active: show === 'publish'}" @click="displayArticle('publish')">
          <router-link  to="/home/articleList">简书出版</router-link> 
        </li>
      </ul>
      <router-view></router-view>
    </div>
  </div>
</div>
</template>
<script>
import { mapState,mapGetters,mapMutations,mapActions } from 'vuex'
export default{
  data () {
    return {}
  },
  computed:{
    ...mapGetters({
        show: 'getShow'
    })
  },
  methods:{
    ...mapActions({
        displayArticle: 'displayArticle'
      })
  },
  created:function  () {
    this.displayArticle('new')
  },
}
</script>
<style lang='less' scoped>
</style>
