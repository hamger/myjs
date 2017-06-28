<template>
<div>
  <div class="showbar">
    <div class="cover-image"></div>
    <div class="text" style="text-shadow:1px 1px 1px #000000">
      <h1>简书</h1>
      <h3>交流故事，沟通想法</h3>
      <p>一个基于内容分享的社区</p>
      <a href="#"><i class="fa fa-pencil"></i>&nbsp;&nbsp;提笔写篇文章</a>
    </div>
  </div>
  <div class="article-page">
    <nav>
      <span class="nav-text fir"><a href="#">发现</a></span>
      <span class="nav-text">
        <router-link to='/bonus'>2015精选</router-link> 
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
        <li :class="{active: show === 'hot'}" @click="displayArticle('hot')">
          <router-link  to="/home/articleList">热门</router-link>  
        </li>
        <li :class="{active: show === 'new'}" @click="displayArticle('new')">
          <router-link  to="/home/articleList">新上榜</router-link>   
        </li>
        <li :class="{active: show === 'daily'}" @click="displayArticle('daily')">
          <router-link  to="/home/articleList">日报</router-link> 
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
    return {
    }
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
  }
}
</script>
<style lang='less'>
    .cover-image {
      position: absolute;
      background:url('../../static/vue-demo-bg3.jpg');
      width: 100%;
      height: 100%;
      background-position: center;
      background-size: cover;
      z-index: -1; 
    }
</style>
