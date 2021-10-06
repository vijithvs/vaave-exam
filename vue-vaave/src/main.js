import Vue from 'vue'
import App from './App.vue'
import router from './router'
import { BootstrapVue} from 'bootstrap-vue'
// import  * as axios from 'axios'
// import VueAxios from 'vue-axios'

// Import Bootstrap an BootstrapVue CSS files (order is important)
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import vuetify from './plugins/vuetify'

Vue.config.productionTip = false
Vue.use(BootstrapVue)
Vue.use(vuetify)
// Vue.use(VueAxios, axios)
new Vue({
  router,
  vuetify,
  render: h => h(App)
}).$mount('#app')
