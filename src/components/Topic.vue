<template>
<div>
  <div class="showbar">
    <div class="cover-image_2"></div>
    <div class="text" style="text-shadow:1px 1px 1px #000000">
      <h1>专题</h1>
      <h3>让思想汇聚，流传</h3>
      <p style="font-size:14px;margin-bottom:5px">专题内容由多位写作者提供</p>
      <a href="#"><i class="fa fa-pencil"></i>&nbsp;&nbsp;新建专题</a>
    </div>
  </div>
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
          <router-link to="/topic/topic_article" >热门</router-link>  
        </li>
        <li :class="{active: show === 'recommend'}" @click="displayTopic('recommend')">
          <router-link to="/topic/topic_article" >推荐</router-link>
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
    computed:mapGetters({
        show:'getShow_2'
      }),
    methods:mapActions([
        'displayTopic'
      ])
  }
</script>
<style>
  .cover-image_2{
      position: absolute;
      background:url('../../static/vue-demo-bg2.jpg');
      width: 100%;
      height: 100%;
      background-position: center;
      background-size: cover;
      z-index: -1; 
    }
</style>