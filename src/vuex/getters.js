export const getArticles = (state) => state.articles;
export const getTopics = (state) => state.topics;
export const getShow = (state) => state.show;
export const getShow_2 = (state) => state.show_2;
export const getBonusTexts = (state) => {
    let articles = [
        state.texts.Jan, state.texts.Feb, state.texts.Mar,
        state.texts.Apr, state.texts.May, state.texts.Jun,
        state.texts.Jul, state.texts.Aug, state.texts.Sep,
        state.texts.Oct, state.texts.Nov, state.texts.Dec
    ]
    return articles
};
export const getLoginWay=(state)=>state.loginway;