<template>
  <div class="wrap">
    <div class="article-nav">
      <ul class="btn-group">
        <li :class="{active: show === 'new'}" @click="show = 'new'">最新</li>
        <li :class="{active: show === 'hot'}" @click="show = 'hot'">热门</li>
        <li :class="{active: show === 'recommend'}" @click="show = 'recommend'">推荐</li>
      </ul>
      <div class="search clearfloat">
          <input type="search" placeholder="搜索">
          <span class="search-icon"><i class="fa fa-search"></i></span>
      </div>
    </div>
  	<ul>
      <li class='list' v-for="article in articles[show]">
  			<p class="list-top">
          <a href="javascript:;" class="author"><span>{{ article.author }}</span></a>
          <span class="time"> - {{$util.dateFormat(article.publish_time)}}</span>
        </p>
  			<h2 class="title"><router-link :to="`/article?id=${article.id}`">{{ article.title }}</router-link></h2>
  			<span class="small-text"><i class="fa fa-eye"></i> {{article.read_num}}</span>
  			<span class="small-text"><i class="fa fa-comment"></i> {{article.comment_num}}</span>
  			<span class="small-text"><i class="fa fa-heart"></i> {{article.like_num}}</span>
        <img class="image" :src="article.cover || '../../static/article_3.jpg'">
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
        new: 0,
        hot: 0,
        recommend: 0
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
    this.displayArticle({type: 'new'})
    this.displayArticle({type: 'hot'})
    this.displayArticle({type: 'recommend'})
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
  .small-text {
    font-size: 13px;
    color: #666;
    padding-right: 10px;
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
