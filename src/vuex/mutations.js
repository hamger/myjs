export const DISPLAY_ARTICLE = (state, payload) => {
  if (payload.page <= 0) state.articles[payload.show] = payload.result
  else state.articles[payload.show] = state.articles[payload.show].concat(payload.result)
  if (payload.result.length < payload.size) state.all[payload.show] = true
}

export const DISPLAY_TOPIC = (state, payload) => {
  if (payload.page <= 0) state.topics = payload.result
  else state.topics = state.topics.concat(payload.result)
}

export const SORTCONTENT = (state, method) => {
  state.topics.sort((a, b) => {
    if (method === 'time') return new Date(b[method]) - new Date(a[method])
    else return b[method] - a[method]
  });
}

export const CHANGELOGIN = (state, loginway) => {
  state.loginway = loginway
}

export const CHANGE_USER = (state, payload) => {
  state.nickname = payload.nickname
  state.account = payload.account
  state.myid = payload.myid
  localStorage.nickname = payload.nickname
  localStorage.account = payload.account
  localStorage.myid = payload.myid
}

