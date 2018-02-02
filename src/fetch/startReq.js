import axios from 'axios'

// 设置基础路由和最大等待时间
const instance = axios.create({
    baseURL: '/api/',
    timeout: 7000
})

// 设置请求拦截
instance.interceptors.response.use(res => {
    if (!res) return Promise.reject(res);
    return res;
}, error => {
    return Promise.reject(error);
})

// 封装 get 请求
export const getReq = (url, params) => {
    return instance({
        method: 'get',
        url: url,
        params: params || {}
    });
}

// 封装 post 请求
export const postReq = (url, params) => {
    return instance({
        method: 'post',
        url: url,
        params: params || {}
    });
}
