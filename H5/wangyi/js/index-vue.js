var searchinput ={
    search:''
}
Vue.component('search-input',{
    template:'<form class="searchbox">
            <input class="col-lg-8" type="text" v-model="search">
            <input type="button" value="搜索">
            <span >{{search}}</span>
            </form>'
})
new Vue({
    el:'#container',
    data:searchinput
})