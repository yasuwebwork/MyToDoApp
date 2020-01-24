import Vue from 'vue'
import App from './app.vue'

document.body.appendChild(document.createElement('hello'))

new Vue({
  el: 'ConD',
  template: '<App/>',
  components: { App }
})