<template>
  <div class="bonus-container">
    <div class="bonus-header">
      <span class="yellow">简书2015</span>
      <i>&nbsp; · &nbsp;</i>
      <span>每月一篇好文章</span>
    </div>
    <div class="share">
      <span><a href="javascript:;"><i class="fa fa-weibo"></i>分享到微博</a></span>
      <span><a href="javascript:;"><i class="fa fa-wechat"></i>分享到微信</a></span>
      <span><a href="javascript:;">更多分享</a></span>
    </div>
    <ul class="text-list">
      <li v-for="article in this.$store.state.texts" :style="{
        background: article.bg,
        backgroundSize: '100%',
        backgroundRepeat: 'no-repeat',
        backgroundColor: '#fff'
      }">
        <div class="content">
          <div class="mask" >
            <div class="read">阅读全文</div>
          </div>
          <div class="bonus-text">
            <div class="bonus-text-title">{{ article.title }}</div>
            <div class="line"></div>
            <div class="bonus-text-content">
              {{article.content_1}}<br>
              {{article.content_2}}<br>
              {{article.content_3}}<br>
              {{article.content_4}}<br>
              {{article.content_5}}<br>
              {{article.content_6}}<br>
            </div>
          </div>
        </div>
      </li>
    </ul>
  </div>
</template>
<script>
  import { mapState } from 'vuex'
  export default {
    // computed: mapState({
    //   texts: state => state.texts // 可以简写为 texts:'texts'
    // })
  }
</script>
<style lang='less' scoped>
  .bonus-container {
    overflow-y: auto;
    text-align: center;
    .bonus-header {
      margin-top: 20px;
      span {
        font-size: 20px;
      }
    }
    .share {
      span {
        padding-right:5px;
        a {
          font-size: 13px;
          color: #6d6b6b; 
        }
      }
    }
    .text-list {
      margin: 10px auto;
      li {
        overflow: hidden;
        vertical-align: middle;
        display: inline-block;
        width: 29%;
        position: relative;
        height: 400px;
        margin: 5px 5px;
        box-shadow: 2px 2px 2px #d5d5d5;
        .mask {
          opacity: 0;
          position: absolute;
          top: 0;
          bottom: 0;
          right: 0;
          left: 0;
          z-index: 1;
          background-color: #efefef;
          color: #fff;
          &:hover {
            opacity: 0.8;
          }
          .read {
            margin: 208px auto 0;
            width: 100px;
            height: 40px;
            line-height: 40px;
            border-radius: 5px;
            background-color: #F5674C;
            cursor: pointer;
          }
        }
        .bonus-text {
          text-align: center;
          margin-top: 180px;
          .bonus-text-title {
            font-size: 14px;
            font-weight: bold;
          }
          .line {
            position: relative;
            display: inline-block;
            top: 10px;
            width: 50px;
            height: 2px;
            background-color: #d5d5d5;
          }
          .bonus-text-content {
            line-height: 20px;
            margin-top: 30px;
            font-size: 12px;
          }
        }
      }
    }
  }
</style>
