import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

import HomeComponent from './components/HomeComponent.vue';
import IndexComponent from './components/IndexComponent.vue';

const router = new VueRouter({
    mode: 'history',
    base: '/',
    routes: [
        {path: '/login', component: HomeComponent},
        {path: '/index', component: IndexComponent}
    ]
});

new Vue({
    router
}).$mount('#app');