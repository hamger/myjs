<template>
  <div class="wrap">
    <div class="article-nav">
      <ul class="btn-group">
        <li :class="{active: show === 'articles'}" @click="show = 'articles'">最新</li>
        <li :class="{active: show === 'new'}" @click="show = 'new'">新上榜</li>
        <li :class="{active: show === 'weekhot'}" @click="show = 'weekhot'">周热门</li>
        <li :class="{active: show === 'monthhot'}" @click="show = 'monthhot'">月热门</li>
      </ul>
      <div class="search clearfloat">
          <input type="search" placeholder="搜索">
          <span class="search-icon"><i class="fa fa-search"></i></span>
      </div>
    </div>
  	<ul>
  		<li class='list' v-for="article in articles[show]"
        v-if="show !== 'articles'">
        <p class="list-top">
          <a href="javascript:;" class="author"><span>{{ article.author }}</span></a>
          <span class="time"> - {{ article.time}}</span>
        </p>
        <h2 class="title"><a href="javascript:;">{{ article.title }}</a></h2>
        <span class="small-text">阅读 {{article.read}} -</span>
        <span class="small-text">评论 {{article.comment}} -</span>
        <span class="small-text">喜欢 {{article.like}} -</span>
        <span class="small-text">打赏 {{article.pay}}</span>
        <div class="image" :style="{backgroundImage:article.src}"></div>
      </li>
      <li class='list' v-for="article in articles[show]"
        v-if="show === 'articles'">
  			<p class="list-top">
          <a href="javascript:;" class="author"><span>{{ article.author }}</span></a>
          <span class="time"> - {{article.time}}</span>
        </p>
  			<h2 class="title"><a href="javascript:;">{{ article.title }}</a></h2>
  			<span class="small-text">阅读 {{article.read || 0}} -</span>
  			<span class="small-text">评论 {{article.comment || 0}} -</span>
  			<span class="small-text">喜欢 {{article.like || 0}}</span>
  			<div class="image" :style="{backgroundImage:article.cover || 'url(../../static/vue-demo-new.jpg)'}"></div>
  		</li>
  	</ul>
    <div class='more' @click="!$store.state.all[show] && getData(show)">
      <span>{{ $store.state.all[show] ? '我是有底线的' : '点击查看更多...'}}</span>
    </div>
  </div>
</template>
<script>
import { mapGetters, mapActions } from 'vuex'

export default {
  data () {
    return {
      show: 'new',
      page: {
        articles: 0,
        new: 0,
        weekhot: 0,
        monthhot: 0
      }
    }
  },
  computed: {
    ...mapGetters({
      articles: 'getArticles'
    })
  },
  methods: {
    ...mapActions({
      displayArticle: 'displayArticle'
    }),
    getData (type) {
      this.page[type]++;
      this.displayArticle({type: type, page: this.page[type]})
    }
  },
  created () {
    this.displayArticle({type: 'articles'})
    this.displayArticle({type: 'new'})
    this.displayArticle({type: 'weekhot'})
    this.displayArticle({type: 'monthhot'})
  }
}
</script>
<style lang="less" scoped>
@import url('../common/css/common.less');
.wrap {
  padding: 0 15px;
}
.article-nav {
  overflow: hidden;
  line-height: 14px;
  font-size: 14px;
  margin: 10px 0 0 0; 
  .search {
    position: relative;
    float: right;
    max-width: 160px;
    width: 23%;
    margin: 0 5px;
    input {
      width: 100%;
      padding-right: 10px;
      padding-left: 10px;
      height: 25px;
      border: 1px solid #efefef;
      border-radius: 10px;
      &:focus {
        outline: none;
        box-shadow: none;
        border-color: rgba(82, 168, 236, 0.8);
      }
    }
    .search-icon {
      position: absolute;
      right: 6px;
      top: 5px;
    }
  }
  .btn-group {
    float: left;
    li {
      display: inline-block;
      text-align: center;
      white-space: nowrap;
      padding: 5px 10px;
      margin: 0 5px;
      border-radius: 10px;
      border: 1px solid #d9d9d9;
    }
    .active {
      background-color: @active-color;
      color: #fff;
    }
  }
}

.list {
  position: relative;
	margin: 7px 5px;
	 	padding-bottom: 7px;
	border-bottom: 1px dashed #d9d9d9;
	.list-top{
	}
  .title {
    line-height: 26px;
    margin-top: 10px 0;
    a {
      font-weight: bold;
      font-size: 18px;
    }
  }
  .image {
    width: 72px;
    height: 72px;
    border-radius: 5px;
    position: absolute;
    right: 0;
    bottom : 11px;
    backgroundSize: 100%;
    backgroundRepeat: no-repat;
  }
}

.more {
  font-size: 14px;
  color: #666;
  height: 40px;
  line-height: 40px;
  text-align: center;
  cursor: pointer;
}
</style>
