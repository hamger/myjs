<template>
	<ul>
		<li class='list' v-for="article in articles">
			<p class="list-top">
        <a href="#" class="author"><span>{{ article.author }}</span></a>
        <span class="time"> - {{ article.time}}</span>
      </p>
			<h2 class="title"><a href="#">{{ article.title }}</a></h2>
			<span class="small-text">阅读 {{article.read}} -</span>
			<span class="small-text">评论 {{article.comment}} -</span>
			<span class="small-text">喜欢 {{article.like}} -</span>
			<span class="small-text">打赏 {{article.pay}}</span>
			<span class="image"
				:style="{backgroundImage:article.src, backgroundSize:'100%', backgroundRepeat:'no-repat'}">
			</span>
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
<style>
	.list{
    	margin:17px 15px;
   	 	padding-bottom: 17px;
   		width: calc(100% - 30px);
    	border-bottom:1px dashed #efefef;
		border-bottom: 1px dashed #d9d9d9;
	}
	.list-top{
		padding-top: 10px;
	}
	.list .title a{
		margin-top: 10px;
    	margin-bottom: 10px;
    	margin-left: 0;
    	display: inherit;
    	font-size: 18px;
    	font-weight: bold;
    	line-height: 1.5;
	}
</style>
