<template>
  <div class="wrap">
    <div class="myinfo">
      <!-- <img class="headimg" :src="require('../../uploads/default.jpg')"> -->
      <img class="headimg" :src="require('../../uploads/1-headimg.jpg')">
      <!-- <img class="headimg" :src="require(imgurl2)"> -->
      <!-- <img class="headimg" :src="require(imgurl3)"> -->
      账号：<span>{{$store.state.account}}</span>
      昵称：<span>{{$store.state.nickname}}</span>
      <button type="button" class="btn btn-default btn-sm"
      @click="editInfo"><i class="fa fa-pencil-square-o"></i>编辑</button>
    </div>
    <div>
      <h5>我的文章</h5>
      <table class="table table-hover">
        <tr v-for="item in data" v-if="item.nodel">
          <td>{{item.title}}</td>
          <td>{{$util.dateFormat(item.publish_time)}}</td>
          <td>
            <button type="button" class="btn btn-primary btn-sm" 
            @click="modArticle(item.id)"><i class="fa fa-pencil-square-o"></i>修改</button>
            <button type="button" class="btn btn-danger btn-sm" 
            @click="delArticle(item)"><i class="fa fa-trash-o"></i>删除</button>
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
      imgurl2: '../../uploads/default.jpg',
      imgurl3: '../../' + this.$store.state.headimg,
      data: []
    }
  },
  computed: {
    ...mapGetters({
      imgurl: "getHeadImg"
    })
  },
  methods: {
    getData () {
      getReq('articles', {
        mine: this.$store.state.myid,
        page: 0,
        size: 5
      }).then(response => {
        response.data.forEach(val => {
          val.nodel = true;
        })
        this.data = this.data.concat(response.data)
      }).catch(function(error) {
        console.log(error)
      })
    },
    delArticle (item) {
      postReq('article/del', {
        id: item.id
      }).then(response => {
        if (response.data.flag) {
          alert(response.data.message)
          item.nodel = false
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
    console.log(this.imgurl3);
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