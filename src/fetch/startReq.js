import axios from 'axios'

// 设置基础路由和最大等待时间
const instance = axios.create({
    baseURL: '/api/',
    timeout: 7000
})

// 添加请求拦截器
axios.interceptors.request.use(function(config) {
    // 在发送请求之前做些什么
    return config;
}, function(error) {
    // 对请求错误做些什么
    return Promise.reject(error);
});

// 添加响应拦截器
axios.interceptors.response.use(function(response) {
    // 对响应数据做点什么
    return response;
}, function(error) {
    // 对响应错误做点什么
    return Promise.reject(error);
});

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
        data: params || {}
    });
}
