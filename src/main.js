import "./set-public-path";
import Vue from "vue";
import singleSpaVue from "single-spa-vue";
import vuetify from "./plugins/vuetify";
import App from "./App.vue";
import router from "./router";

Vue.config.productionTip = false;

const vueLifecycles = singleSpaVue({
  Vue,
  appOptions: {
    render: h => h(App),
    router,
    vuetify
  },
  
});

export const bootstrap = vueLifecycles.bootstrap;
export const mount = vueLifecycles.mount;
export const unmount = vueLifecycles.unmount;