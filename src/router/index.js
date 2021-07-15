import Vue from 'vue'
import VueRouter from 'vue-router'
// import SideNav from '../components/SideNav'

Vue.use(VueRouter)

const routes = [
  // {
  //   path: '/',
  //   name: 'SideNav',
  //   component: SideNav,
  //   meta:{ title:'ToDo Home'}
  // },
  
]

const router = new VueRouter({
  mode: 'history',
  routes
})
const DEFAULT_TITLE = 'Some Default Title';
router.afterEach((to) => {
        Vue.nextTick(() => {
        document.title = to.meta.title || DEFAULT_TITLE;
    });
});

export default router
