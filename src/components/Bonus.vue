<template>
  <div class="bonus-container">
    <div class="bonus-header">
      <span class="yellow">&nbsp;&nbsp;简书2015</span>
      <i>&nbsp;·&nbsp;</i>
      <span>每月一篇好文章&nbsp;&nbsp;</span>
    </div>
    <div class="share">
      <span><a href="#"><i class="fa fa-mobile"></i>手机查看效果更佳</a></span>
      <span><a href="#"><i class="fa fa-weibo"></i>分享到微博</a></span>
      <span><a href="#"><i class="fa fa-wechat"></i>分享到微信</a></span>
      <span><a href="#">更多分享</a></span>
    </div>
    <ul class="text-list">
      <li v-for="article in texts"
          :style="{ background: article.bg, backgroundSize: '100%', backgroundRepeat: 'no-repeat', backgroundColor: '#fff'}">
      <div class="content">
        <div class="mask" >
          <div>阅读全文></div>
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
        <div class="author"></div>
      </div>
      </li>
    </ul>
  </div>
</template>
<script>
  import { mapState } from 'vuex'
  export default {
    computed:mapState({
      texts: state => state.texts // 可以简写为 texts:'texts'
    })
  }
</script>
<style lang='less' scoped>
  .bonus-container {
      width: 96%;
      margin: 0 auto;
      .bonus-header {
        width: 600px;
        margin: 30px auto;
        span {
          font-size: 36px;
        }
        &:before {
          display: inline-block;
          content: '';
          position: relative;
          top: -12px;
          width: 50px;
          height: 2px;
          background-color: #d5d5d5;
        }
        &:after {
          display: inline-block;
          content: '';
          position: relative;
          top: -12px;
          width: 50px;
          height: 2px;
          background-color: #d5d5d5;
        }
      }
      .share {
        width: 600px;
        margin: 0 auto;
        span {
          padding: 0 5px;
        }
        &:before {
          display: inline-block;
          width: 80px;
          content: '';
        }
      }
      .text-list {
        width: 1110px;
        margin: 20px auto;
        li {
          position: relative;
          display: inline-block;
          width: 342px;
          height: 660px;
          margin: 10px 10px;
          box-shadow: 5px 5px 10px #d5d5d5;
        }
        .mask {
          opacity: 0;
          position: absolute;
          top: 0;
          z-index: 16;
          background-color: #efefef;
          width: 342px;
          height: 660px;
          color: #ffffff;
          &:hover {
            opacity: 0.8;
          }

          div {
            margin: 300px auto;
            width: 100px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            border-radius: 5px;
            background-color: #F5674C;
          }
        }
        .bonus-text {
          text-align: center;
          margin-top: 280px;
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
</style>
