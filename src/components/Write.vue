<template>
  <div class="wrap">
    <form class="add-form">
      <input type="text" class="form-control" placeholder="文章标题" v-model="title">
      <br>
      <textarea class="form-control" type="text"
        style="height: 200px;"
        placeholder="文章内容"
        v-model="content">
      </textarea>
      <br>
      <button class="btn btn-default" type="button" @click="publish"><span>提交</span></button>
    </form>
  </div>
</template>
<script>
import { getReq, postReq } from '../fetch/startReq.js'
export default {
  name: 'write',
  data () {
    return {
      id: 0,
      title: '',
      content: ''
    }
  },
  methods: {
    publish () {
      if(this.title && this.content) {
        if (this.id === 0) {
          postReq('article/add', {
            author: this.$store.state.nickname,
            title: this.title,
            content: this.content
          }).then(response => {
            if (response.data.flag) {
              alert(response.data.message);
              this.title = ''
              this.content = ''
            }
          }).catch(e => {    
            console.log(e)
          })
        } else {
          postReq('article/upd', {
            id: this.id,
            title: this.title,
            content: this.content
          }).then(response => {
            if (response.data.flag) {
              alert(response.data.message);
              this.title = ''
              this.content = ''
            };
          }).catch(e => {    
            console.log(e)
          })
        }
      } else {
        alert('文章标题/内容不能为空');
      }
    },
    getData (id) {
      getReq('article', {
        id: this.id
      }).then(response => {
        if (response.data.flag) {
          this.title = response.data.title
          this.content = response.data.content
        };
      }).catch(e => {
        console.log(e)
      })
    }
  },
  created () {
    const param = this.$util.parseUrl(window.location.href).params;
    if (param.id > 0) {
      this.id = param.id
      this.getData()
    }
  }
}
</script>
<style lang='less' scoped>
  .wrap {
    padding: 15px;
    .add-from {
    }
  }
</style>