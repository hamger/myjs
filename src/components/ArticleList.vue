<template>
	<ul>
		<li class='list' v-for="article in articles">
			<p class="list-top">
        <a href="javascript:;" class="author"><span>{{ article.author }}</span></a>
        <span class="time"> - {{ article.time}}</span>
      </p>
			<h2 class="title"><a href="javascript:;">{{ article.title }}</a></h2>
			<span class="small-text">阅读 {{article.read}} -</span>
			<span class="small-text">评论 {{article.comment}} -</span>
			<span class="small-text">喜欢 {{article.like}} -</span>
			<span class="small-text">打赏 {{article.pay}}</span>
			<div class="image"
				:style="{backgroundImage:article.src, backgroundSize:'100%', backgroundRepeat:'no-repat'}">
			</div>
		</li>
	</ul>
</template>
<script>
import { mapGetters } from 'vuex'
export default {
	computed: mapGetters({
		articles: 'getArticles'
	})
}
</script>
<style lang="scss" scoped>
	.list {
    position: relative;
  	margin: 7px 5px;
 	 	padding-bottom: 7px;
		border-bottom: 1px dashed #d9d9d9;
  	.list-top{
//  		padding-top: 10px;
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
      position: absolute;
      right: 0;
      bottom : 7px;
    }
  }
</style>
