<template>
  <div class="topic_article_container">
    <div class="sequence-nav">
      <span @click="sortContent('time'), change = 'time'"
      :class="{active: change === 'time'}">新鲜度排序</span>
      <b>.</b>
      <span @click="sortContent('concern'), change = 'concern'"
      :class="{active: change === 'concern'}">关注度排序</span>
    </div>
    <ul>
      <li v-for="item in topics">
        <img  class="topic_img" :src="item.img">
        <div class="topic_content">
          <h6>{{ item.title }}</h6>
          <p>{{ item.info }}</p>
          <p class="topic_tag">
            <span>{{item.articles}}篇文章</span>
            <span>{{item.concern}}人关注</span>
            <span><i class="fa fa-tags"></i>{{ item.keys}}</span>
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
    data () {
      return {
        change: 'time'
      }
    },
    computed: mapGetters({
      topics: 'getTopics'
    }),
    methods: mapActions([
      'sortContent',
      'displayTopic'
    ]),
    created () {
      this.displayTopic({});
    }
  }
</script>
<style lang='less' scoped>
@import url('../common/css/common.less');

.topic_article_container{
  padding:15px;
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
    .topic_img {
      float: left;
      width: 40px;
      height: 40px;
      border-radius: 50%;
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
      .topic_tag {
        color: #666;
        span {
          padding-right: 10px;
        }
      }
      .topic_button {
        text-align: center;
        position: absolute;
        right: 0;
        top:50%;
        display: inline-block;
        width: 80px;
        height: 24px;
        line-height: 22px;
        margin-top: -10px;
        border:1px solid #49be38;
        border-radius: 12px;
        background-color: #49be38;
        cursor: pointer;
        color: #fff;
        span {
          border-left: 1px solid #fff;
          padding-left: 5px;
          margin-left: 3px;
        }
      }
    }
  }
}
</style>