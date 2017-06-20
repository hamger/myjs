import axios from 'axios'

// 设置基础路由和最大等待时间
const instance = axios.create({
    baseURL: '/api/',
    timeout: 5000
})

// 设置请求拦截器
instance.interceptors.response.use((res) => {
    if (!res) {
        return Promise.reject(res);
    }
    return res;
}, (error) => {
    return Promise.reject(error);
})

export const displayArticle = ({ commit },show) => {
	instance({
		method:'get',
		url:'article/list?type='+ show
	}).then(function (response) {
		var result = response.data
    	commit('DISPLAY_ARTICLE',{result:result,show:show})
	}).catch(function (error) {
		console.log(error)
	})
}

export const displayTopic = ({ commit },show) => {
	commit('DISPLAY_TOPIC',show)
} 

export const sortContent = ({ commit },method) => {
	commit('SORTCONTENT',method)
}

export const changeLogin = ({ commit },loginway) => {
	commit('CHANGELOGIN',loginway)
}