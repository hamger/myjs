export const DISPLAY_ARTICLE = (state, payload) => {
    state.show = payload.show
    state.articles = payload.result
}

export const DISPLAY_TOPIC = (state, show) =>{
    const topic = {
        hot: {
            fir: {
                img: '../../static/vue-demo-hot.jpg',
                title: '游戏',
                par: '玩转简书的第一步，从这个专题开始。\
				  		想上首页热门榜么？好内容想被更多人看到么？来投稿吧！\
				  		如果被拒也不要灰心哦～入选文章会进一个队列挨个上首页，请耐心等待。\
				  		投稿必须原创。如果发现有非...',
                number: '97233',
                concern: '121.7k',
                keys: '故事、连载'
            },
            sec: {
                img: '../../static/topic_3.jpg',
                title: '诗',
                par: '诗，让你感受自己的心灵。\
				 	专题主编：苏锦年 投稿须知：\
				 	1.本专题收录古诗、词、现代诗以及诗词点评及指导。\
                 	2.内容必须为原创，切勿用其他诗人的诗句。\
                    3.文章排版整洁，注意...',
                number: '35420',
                concern: '146.6k',
                keys: '诗',
                time: '20160630'
            }
        },
        recommend: {
            fir: {
                img: '../../static/topic_1.jpg',
                title: '游戏',
                par: '玩转简书的第一步，从这个专题开始。\
				  		 想上首页热门榜么？好内容想被更多人看到么？来投稿吧！\
				  		 如果被拒也不要灰心哦～入选文章会进一个队列挨个上首页，请耐心等待。\
				  		 投稿必须原创。如果发现有非...',
                number: '97233',
                concern: '121.7',
                keys: '故事、连载',
                time: '20160620'
            },
            sec: {
                img: '../../static/topic_3.jpg',
                title: '诗',
                par: '诗，让你感受自己的心灵。\
				 		专题主编：苏锦年 投稿须知：\
				 		1.本专题收录古诗、词、现代诗以及诗词点评及指导。\
                 		2.内容必须为原创，切勿用其他诗人的诗句。\
                 		3.文章排版整洁，注意...',
                number: '35420',
                concern: '146.6',
                keys: '诗',
                time: '20160630'
            },
            thi: {
                img: '../../static/topic_2.jpg',
                title: '@IT互联网',
                par: '@IT 专题 由 IT大分类，转定位于IT·互联网行业观察与思考，数码产品极客体验。\
					主编：向右奔跑 http://www.jianshu.com/users/54b5900965ea...',
                number: '8409',
                concern: '111.1',
                keys: '互联网、产品、科技',
                time: '20160625'
            }
        }
    }
    state.show_2 = show
    state.topics = topic[show]
}

export const SORTCONTENT = (state,method) => {
	const temp = state.topics
		let arr = []
		let Arr = objClone(state.topics)
		switch(method){
			case 'time':
				arr = [temp.fir.time, temp.sec.time, temp.thi.time].sort()
				break
			case 'concern':
				arr = [temp.fir.concern, temp.sec.concern, temp.thi.concern].sort()
				break
			default:
				break
		}
		for(let keys in state.topics){
			if(Arr[keys][method] == arr[2]){
				console.log(Arr[keys][method])
				state.topics.fir = Arr[keys]
			}
			else if(Arr[keys][method] == arr[1]){
				state.topics.sec = Arr[keys]
			}
			else if(Arr[keys][method] == arr[0]){
				console.log(Arr[keys][method])
				state.topics.thi = Arr[keys]
			}
		}
		function objClone(myObj){
    		if(typeof(myObj) != 'object') return myObj;
    		if(myObj == null) return myObj;
    		var myNewObj = new Object();
    		for(var i in myObj){
    			myNewObj[i] = objClone(myObj[i]);
    		}
    		return myNewObj;
		}
}

export const CHANGELOGIN = (state,loginway) => {
    state.loginway = loginway
}