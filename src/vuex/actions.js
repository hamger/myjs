export const displayArticle = ({ commit },show) => {
	commit('DISPLAY_ARTICLE',show)
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