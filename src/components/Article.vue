<template>
  <div class="wrap">
    <h2>{{data.title}}</h2>
    <div class="about">
      <p>{{data.author}}</p>
      <p>
        <span class="info">{{$util.dateFormat(data.publish_time)}}</span>
        <span class="info">字数 {{String(data.content).length}}</span>
        <span class="info">阅读 {{data.read_num}}</span>
        <span class="info">喜欢 {{data.like_num}}</span>
        <span class="info">评论 {{data.comment_num}}</span>
      </p>
    </div>
    <div class="content">
      {{data.content}}
    </div>
    <div class="like-share">
      <div class="like">
        <div>
          <i class="fa fa-heart-o"></i><span>喜欢</span><span>{{data.like_num}}</span>
        </div>
      </div>
      <div class="share">
        <ul>
          <li class="weiboicon"><i class="fa fa-weibo"></i></li>
          <li class="wechaticon"><i class="fa fa-wechat"></i></li>
          <li class="more-share">更多分享</li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
import { getReq, postReq } from '../fetch/startReq.js'
export default {
  name: 'write',
  data () {
    return {
      data: {}
    }
  },
  methods: {
    getData (id) {
      getReq('article', {id: id}).then(response => {
        if (response.data.flag) {
          this.data = response.data
        };
      }).catch(e => {
        console.log(e)
      })
    }
  },
  created () {
    const param = this.$util.parseUrl(window.location.href).params;
    this.getData(param.id)
  }
}
</script>
<style lang='less' scoped>
  @import url('../common/css/common.less');
  .wrap {
    padding: 15px;
    .about {
      text-align: left;
      p {
        margin: 0;
        color: #666;
        font-size: 13px;
        .info {
          padding-right: 15px;
        }
      }
      p:first-child {
        padding-bottom: 5px;
        color: #000;
        font-size: 16px;
      }
    }
    .content {
      padding: 15px 0;
    }
    .like-share {
      overflow: hidden;
      .like {
        float: left;
        div {
          .point();
          text-align: center;
          height: 30px;
          line-height: 30px;
          width: 98px;
          color: pink;
          border: 1px solid pink;
          border-radius: 15px;
        }
        div:hover {
          background-color: pink;
          color: #fff;
        }
      }
      .share {
        float: right;
        text-align: right;
        ul {
          color: #333;
          vertical-align: middle;
          li{
            display: inline-block;
            margin: 0 5px;
            width: 30px;
            height: 30px;
            text-align: center;
            background-color: #b1b1b1;
            border-radius: 50%;
            .point();
            &:hover i{
              color:#fff;
            }
            i{
              line-height: 30px;
              font-size: 14px;
            }
          }
          .more-share {
            line-height: 30px;
            width: 88px;
            border: 1px solid #777;
            border-radius: 15px;
          }
          .more-share:hover {
            color: #fff;
            background-color: pink;
          }
          .wechaticon:hover {
            background-color:#49be38;
          }
          .weiboicon:hover {
            background-color:#F6774F;
          }
        }
      }
    }
  }
</style>