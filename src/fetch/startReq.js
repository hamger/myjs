import axios from 'axios'

const instance = axios.create({
    baseURL: '/api/',
    timeout: 10000
})

instance.interceptors.response.use((res) => {
    if (!res) {
        return Promise.reject(res);
    }
    return res;
}, (error) => {
    return Promise.reject(error);
})

export getReq(url, params) {
    return instance({
        method: 'get',
        url: url,
        params: params || {}
    });
}

export postReq(url, params) {
    return instance({
        method: 'post',
        url: url,
        params: params || {}
    });
}
