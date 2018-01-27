import { getReq } from './startReq'

var result = {}

getReq('articleList')
    .then(function(res) {
        result = res.data
    })
    .catch(function(error) {
        console.log(error)
    })

export default result
