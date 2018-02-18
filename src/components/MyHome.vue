<template>
  <div class="wrap">
    <div class="myinfo">
      <img class="headimg" :src="headimg">
      账号：<span>{{$store.state.account}}</span>
      昵称：<span>{{$store.state.nickname}}</span>
      <button type="button" class="btn btn-default btn-sm"
      @click="editInfo"><i class="fa fa-pencil-square-o"></i>编辑</button>
    </div>
    <div>
      <h5>我的文章</h5>
      <table class="table table-hover">
        <tr v-for="item in data">
          <td>{{item.title}}</td>
          <td>{{$util.dateFormat(item.publish_time)}}</td>
          <td>
            <button type="button" class="btn btn-primary btn-sm" 
            @click="modArticle(item.id)"><i class="fa fa-pencil-square-o"></i>修改</button>
            <button type="button" class="btn btn-danger btn-sm" 
            @click="delArticle(item.id)"><i class="fa fa-trash-o"></i>删除</button>
          </td>
        </tr>
      </table>
    </div>
  </div>
</template>
<script>
import { mapGetters, mapActions } from 'vuex'
import { getReq, postReq } from '../fetch/startReq.js'

export default {
  name: 'myhome',
  data () {
    return {
      img: null,
      headimg: require('../../' + this.$store.state.headimg),
      data: []
    }
  },
  methods: {
    getData () {
      getReq('articles', {
        mine: this.$store.state.nickname,
        page: 0,
        size: 5
      }).then(response => {
        this.data = this.data.concat(response.data)
        // console.log(this.data);
      }).catch(function(error) {
        console.log(error)
      })
    },
    delArticle (id) {
      postReq('article/del', {
        id: id
      }).then(response => {
        if (response.data.flag) {
          alert(response.data.message)
        }
      }).catch(e => {
        console.log(e)
      })
    },
    modArticle (id) {
      this.$router.push(`/write?id=${id}`)
    },
    editInfo () {
      this.$router.push(`/edit?id=${this.$store.state.myid}`)
    }
  },
  created () {
    this.getData();
  }
}
</script>
<style lang='less' scoped>
  .wrap {
    padding: 15px;
    .myinfo {
      margin-bottom: 20px;
      line-height: 40px;
      .headimg {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        margin-right: 20px;
      }
      span {
        padding-right: 20px;
      }
    }
  }
</style>