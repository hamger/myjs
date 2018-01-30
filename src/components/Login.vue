<template>
	<div class="login-container">
		<div class="login-header">
			<a :class="{active: loginway == 'login'}" @click="changeLogin('login')">登录</a>
			<span> . </span>
			<a :class="{active: loginway == 'register'}" @click="changeLogin('register')">注册</a>
		</div>
		<div class="login-input" v-if="loginway === 'login' ">
			<form class="form_login" accept-charset="UTF-8" method="post">
				<div class="input-group">
				  <span id="basic-addon1"><i class="fa fa-user"></i></span>
				  <input type="text" class="form-control" placeholder="账号" aria-describedby="basic-addon1" v-model="login.account">
				</div>
				<div class="input-group">
				  <span id="basic-addon2"><i class="fa fa-unlock-alt"></i></span>
				  <input type="password" class="form-control" placeholder="密码" aria-describedby="basic-addon2" v-model="login.password">
				</div>
				<button class="btn btn-info" type="button" @click='doLogin()'><span>登录</span></button>
				<div class="login-control" style="color:#555555;font-size:12px;">
					<span style="float:left" class="checkbox" :class="{checked: checked === true}"
						@click="checked = !checked">
						<input type="checkbox" style="position: absolute; opacity: 0;" checked="checked">
						<ins class="check"></ins>
					</span>
					<span style="float:left">记住我</span>
					<span style="float:right"><a href="javascript:;" style="color:#555555">忘记密码</a></span>
				</div>
			</form>
		</div>
		<div class="login-input" v-if="loginway === 'register'">
			<form class="form_register" accept-charset="UTF-8" method="post">
				<div class="input-group">
				  <span id="basic-addon3"><i class="fa fa-envelope-o"></i></span>
				  <input type="text" class="form-control" placeholder="邮箱/手机号" aria-describedby="basic-addon3" v-model="register.account">
				</div>
				<div class="input-group">
				  <span id="basic-addon4"><i class="fa fa-user"></i></span>
				  <input type="text" class="form-control" placeholder="昵称" aria-describedby="basic-addon4" v-model="register.nickname">
				</div>
				<div class="input-group">
				  <span id="basic-addon5"><i class="fa fa-unlock-alt"></i></span>
				  <input type="password" class="form-control" placeholder="密码" aria-describedby="basic-addon5" v-model="register.password">
				</div>
				<button class="btn btn-success"  type="button" @click="doRegist()"><span>注册</span></button>
				<p class="register_text">点击 “注册” 或下方社交登录按钮，即表示您同意并愿意遵守简书 <a href="javascript:;">用户协议</a> 和 <a href="javascript:;">隐私政策</a> 。</p>
			</form>
		</div>
		<div class="login-way">
			<h5>您还可以通过以下方式登录</h5>
			<ul>
				<li class="qqicon"><i class="fa fa-qq"></i></li>
				<li class="weiboicon"><i class="fa fa-weibo"></i></li>
				<li class="wechaticon"><i class="fa fa-wechat"></i></li>
				<li class="googleicon"><i class="fa fa-google-plus"></i></li>
				<li class="githubicon"><i class="fa fa-github"></i></li>
			</ul>
		</div>
	</div>
</template>
<script>
import { mapGetters } from 'vuex'
import { crypMD5,
  crypHmac,
  encrypt,
  decrypt,
  sign, 
  verify, 
  publicEncrypt, 
  privateDecrypt 
} from '../common/js/crypto.js'

export default{
	data () {
		return {
			checked: 'true',
			login: {},
  		register: {}
		}
	},
	computed: mapGetters({
		loginway: "getLoginWay"
	}),
	methods: {
		// 切换注册或者登陆状态
		changeLogin (loginway) {
  		this.$store.dispatch('changeLogin', loginway)
		},
		getKey () {
			this.$http.get('/api/key').then(response => {
				console.log(response.data);
			})
		},	
  	// 注册
  	doRegist () {
  		let account = this.register.account,
  		nickname = this.register.nickname,
  		password = this.register.password

	  	if( !account || !nickname || !password ) {         			
	  		alert('请填写完整！')
	  	} else {
	  		this.$http.get('/api/key').then(response => {
	  			if (response.status === 200 && response.statusText === "OK") {
  					let public_key = response.data
			  		this.$http.post('/api/user/register/', {
							account: publicEncrypt(account, public_key),
			   			nickname: encrypt(nickname, 'DwYCjqFx5YCx0h0S'),
			   			password: crypMD5(password)
			     	}).then(response => {
			    		this.dealResponse(response.data,false)
			    	}).catch(error => {    
			    		console.log(error)
			    	})
	  			} else {
	  				alert('获取密钥失败');
	  			}
	  		})
	  	}
  	},
	  // 登陆 
	  doLogin () {
	  	let url  = `/api/user/login?account=${this.login.account}&password=${crypMD5(this.login.password)}`
	  	this.$http.get(url).then(response => {
	  		this.dealResponse(response.data,true)
	  	}).catch(error => {    
	  		console.log(error)  
	  	})
	  },
	  // 处理响应
	  dealResponse (response, islogin) {
	    console.log(response)
	    if (response.status) {
	    	if (islogin) {
					this.$store.state.userName = response.username
	      	this.$router.push('/article/articleList')
	    	}else {
	    		this.$store.dispatch('changeLogin', 'login')
	    	}
	    } else {
	    	if (islogin) alert('登录失败！')
	      else alert('注册失败！')
	    }
	  }
	}
}
</script>

<style lang='less' scoped>
	@import url('../common/css/common.less');
	.login-container{
		padding: 32px 0;
  	text-align: center;

  	.login-logo{
			width: 252px;
			height: 123px;
			margin: 0 auto;
			background: url('../../static/jianshu_logo.jpg') no-repeat;
			background-size:100%;
		}

		.login-header{
			font-size: 17.5px;
			margin: 70px 0 48px 0;
			&:before , &:after {
				position: relative;
				display: inline-block;
				top: -6px;
				content: '';
				height: 1px;
				width: calc(50% - 200px);
				background-color: rgba(113,113,113,0.17);
			}
			a {
				color: #b1b1b1;
				padding: 4px 15px;
				.point();
			}
			.active {
				color: #fff;
				background-color: @active-color;
			}
		}

		.login-input {
			form{
				width: 300px;
				margin: 0 auto;
				border-bottom: 1px solid rgba(113,113,113,0.17);
				.btn{
					margin: 30px auto 15px auto;
					width: 100%;
					height: 50px;
					border: 0;
					border-radius: 4px;
					cursor: pointer;
					span{
						font-size: 18px;
						color: #ffffff;
					}
				}
				.input-group {
					margin-bottom: 20px;
					span {
						display: inline-block;
						width: 34px;
						height: 34px;
						font-size: 12px;
						border: 1px solid #ccc;
						border-right: none; 
						border-radius: 4px 0 0 4px;
						line-height: 34px;
					}
					.form-control:focus {
						outline: none;
						border-color: rgba(82,168,236,0.8);
					}
				}
			}

			.form_login{
				height: 245px;
				.checkbox{
		    	display: inline-block;
		    	vertical-align: middle;
		    	position: relative;
		    	margin: 0;
		    	padding: 0;
		    	width: 18px;
		   	 	height: 18px;
		    	background: url('../../static/checkbox.jpg') no-repeat;
		    	background-position: -40px 0;
		    	border: none;
		    	cursor: pointer;
				}
				.login-control .checked{
					background-position: -20px 0;
				}
				.check{
					position: absolute;
		    	top: 0%;
		    	left: 0%;
		    	display: block;
		    	width: 100%;
		    	height: 100%;
		    	margin: 0px;
		    	padding: 0px;
		    	border: 0px;
		    	opacity: 0;
		    	background: rgb(255, 255, 255);
				}
			}

			.form_register{
				height: 300px;
				.register_text{
					font-size: 12px;
					color: #9d9d9d;
					a {
						color: #000000;
						font-weight: bold;
					}
				}
			}
		}

		.login-way {
			h5{
				margin:20px 0;
				font-weight: normal;
				color: #b1b1b1;
			}
			li{
				display: inline-block;
				margin: 0 5px;
				width: 40px;
				height: 40px;
				text-align: center;
				background-color: #b1b1b1;
				border-radius: 50%;
				.point();
				&:hover i{
					color:#fff;
				}
				i{
					line-height: 40px;
					font-size: 25px;
				}
			}
			.wechaticon:hover{
				background-color:#49be38;
			}
			.qqicon:hover{
				background-color:#50BCF2;
			}
			.googleicon:hover{
				background-color:#F7566A;
			}
			.weiboicon:hover{
				background-color:#F6774F;
			}
			.githubicon:hover{
				background-color:#494D4F;
			}
		} 
	}
</style>
