<template>
	<div class="wrap">
		<form>
			<div class="form-group">
				<label for="inputNickname">昵称：</label>
				<input v-model="nickname" type="text" class="form-control" id="inputNickname" placeholder="昵称">
			</div>
			<div class="form-group">
				<label for="inputFile">上传头像：</label>
				<input ref="upload" type="file" name="imgfile" id="inputFile">
			</div>
		</form>
    	<button class="btn btn-primary" type="button" @click="update"><span>提交修改</span></button>
    	<button class="btn btn-info" type="button" @click="cancle"><span>取消修改</span></button>
	</div>
</template>

<script>
import { mapMutations } from 'vuex'
export default {
	name: 'edit',
	data () {
		return {
			nickname: this.$store.state.nickname,
			headimg: this.$store.state.headimg
		}
	},
	methods: {
		...mapMutations([
	      'CHANGE_USER'
	    ]),
		update () {
			if (this.$refs.upload.files[0] || this.nickname !== this.$store.state.nickname) {
				let formData = new FormData();
				formData.append('file', this.$refs.upload.files[0]); // 通过append向form对象添加数据
				formData.append('id', this.$store.state.myid);
				formData.append('nickname', this.nickname);
				// console.log(formData.get('file')); // FormData私有类对象，访问不到，通过get获取属性
				let config = {
					headers: {'Content-Type': 'multipart/form-data'}
				}
				this.$http.post(`/api/uploadimg?id=${this.$store.state.myid}`, formData, config).then(response => {
					this.CHANGE_USER({
		    			nickname: this.nickname,
		    			account: this.$store.state.account,
		    			myid: this.$store.state.myid,
		    			headimg: this.$store.state.headimg
		    		})
					if (confirm('修改成功，是否返回')) this.$router.go(-1);
				}).catch(function(error) {
					console.log(error)
				})
			} else {
				alert('请输入修改内容！')
			}
		},
		cancle () {
			window.location.back();
		}
	}
}

</script>

<style lang="less" scoped>
.wrap {
	max-width: 500px;
	margin: 0 auto;
	padding: 15px;
}
</style>