import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../components/Home.vue'
// import home from '@/components/home'
// import blog from '@/components/blog'
import Login from '../components/Login.vue'
import Examination from '../components/Examination.vue'
// import Examination from '../components/Examination.vue'
// import contact from '@/components/contact'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Login',
    component: Login
  },
  {
    path: '/home',
    name: 'Home',
    component: Home
  },
  {
    path: '/examination',
    name: 'examination',
    component: Examination
  },

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
