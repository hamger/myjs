<template>
<div>
  <div class="showbar">
    <div class="cover-image"></div>
    <div class="text" style="text-shadow:1px 1px 1px #000000">
      <h1>简书</h1>
      <h3>交流故事，沟通想法</h3>
      <p>一个基于内容分享的社区</p>
      <a href="#"><i class="fa fa-home"></i>提笔写篇文章</a>
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
          <router-link  to="/home/article">热门</router-link>  
        </li>
        <li :class="{active: show === 'new'}" @click="displayArticle('new')">
          <router-link  to="/home/article">新上榜</router-link>   
        </li>
        <li :class="{active: show === 'daily'}" @click="displayArticle('daily')">
          <router-link  to="/home/article">日报</router-link> 
        </li>
        <li :class="{active: show === 'weekhot'}" @click="show = 'weekhot'">
          <router-link  to="/home/article">七日热门</router-link> 
        </li>
        <li :class="{active: show === 'monthhot'}" @click="show = 'monthhot'">
          <router-link  to="/home/article">三十日热门</router-link> 
        </li>
        <li :class="{active: show === 'reward'}" @click="show = 'reward'">
          <router-link  to="/home/article">有奖活动</router-link> 
        </li>
        <li :class="{active: show === 'publish'}" @click="show = 'publish'">
          <router-link  to="/home/article">简书出版</router-link> 
        </li>
        <li :class="{active: show === 'choice'}" @click="show = 'choice'">
          <router-link  to="/home/article">专题精选</router-link> 
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
    ...mapMutations({
        displayArticle:'DISPLAY_ARTICLE'
      })
  }
}
</script>
<style>
  .btn-group{
    margin-left: 15px;
    margin-top:20px;
  }
  .btn-group li{
    margin: 5px 5px;
  }
  .btn-group .active{
    background-color: #de533a;
  }
  .btn-group .active a{
    color: #ffffff;
  }
  .btn-group li{
    margin: 0 5px;
    display: inline-block;
    padding: 5px 10px;
    border: 1px solid #d9d9d9;
    border-radius: 10px;
  }
</style>
