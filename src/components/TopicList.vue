<template>
	<div class="topic_article_container">
		<div class="sequence-nav" v-if="show === 'recommend'">
			<span @click="sortContent('time'), change = 'new'"
			:class="{active: change === 'new'}">新鲜度排序</span>
			<b>.</b>
			<span @click="sortContent('concern'), change = 'concern'"
			:class="{active: change === 'concern'}">关注度排序</span>
		</div>
		<ul>
			<li v-for="content in topic">
				<span class="topic_article_img"><img :src="content.img"></span>
				<div class="topic_content">
					<h5>{{ content.title }}</h5>
					<p>{{ content.par }}</p>
					<p>
						<a href="javascript:;" style="color:#4094c7">{{ content.number}}篇文章</a>
						&nbsp;&nbsp;·&nbsp;&nbsp;{{content.concern}}k人关注
						<span class="topic_tag"><i class="fa fa-tags"></i>{{ content.keys}}</span>
					</p>
					<div class="topic_button"><i class="fa fa-fw fa-plus"></i><span>关注</span></div>
				</div>
			</li>
		</ul>
	</div>
</template>
<script>
	import { mapGetters,mapActions } from 'vuex'
	export default {
		data (){
			let change = 'hot';
			return {change}
		},
		computed: mapGetters({
			topic: 'getTopics',
			show: 'getShow_2'
		}),
		methods: mapActions([
			'sortContent'
		])
	}
</script>
<style lang="scss" rel="stylesheet/scss">
	.topic_article_container{
		padding:0 15px;
		.sequence-nav {
			font-size: 12px;
			color: #999;
			b {
				padding: 0 5px;
			}
			span {
				cursor: pointer;
				padding: 3px;
			}
			.active {
				color: #fff;
			}
		}
		li {
			padding: 15px 0 10px 0;
			border-bottom: 1px dashed #d9d9d9;
			.topic_article_img {
				float: left;
				width: 40px;
				height: 40px;
				border-radius: 50%;
				img {
					width: 100%;
			 		height: 100%;
			  	border: 2px solid white;
			  	box-sizing: border-box;
			  	border-radius: 50%;
				}
			}
			.topic_content{
				position: relative;
				margin-left: 55px;
				h5 {
					margin-bottom: 3px;
				}
				p {
					overflow: hidden;
					margin-bottom: 3px;
					line-height: 20px;
					color: #999;
					font-size: 12px;
					margin-right: 88px;
				}
				.topic_tag{
					margin-left: 10px;
				}
				.topic_button {
					text-align: center;
					position: absolute;
					right: 0;
					top:50%;
					display: inline-block;
					width: 80px;
					height: 24px;
					line-height: 24px;
					margin-top: -10px;
					border:1px solid #49be38;
					border-radius: 12px;
					background-color: #49be38;
					cursor: pointer;
					color: #fff;
					span {
						border-left: 1px solid #fff;
						padding-left: 3px;
					}
				}
			}
		}
	}
</style>
