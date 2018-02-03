<template>
  <div class="wrap">
    <form class="add-form">
      <input type="text" placeholder="在此输入文章标题" v-model="title"/><br>
      <textarea type="text"
        style="height: 200px;width: 100%;"
        placeholder="在此输入文章内容"
        v-model="content">
      </textarea><br>
      <button class="btn btn-default"  type="button" @click="publish"><span>提交</span></button>
    </form>
  </div>
</template>
<script>
import { getReq, postReq } from '../fetch/startReq.js'
export default {
  name: 'write',
  data () {
    return {
      title: '',
      content: ''
    }
  },
  methods: {
    publish () {
      if(this.title && this.content) {
        console.log(this.title + ' --- ' + this.content);
        postReq('article/add', {
          title: this.title,
          content: this.content
        }).then(response => {
          console.log(response)
        }).catch(error => {    
          console.log(error)
        })
      } else {
        alert('文章标题/内容不能为空');
      }
    }
  }
}
</script>
<style lang='less' scoped>
  .wrap {
    padding: 15px;
    .add-from {
      input {
        width: 100%;
      }
      textarea {
        width: 100%;
        height: 200px;
      }
    }
  }
</style>