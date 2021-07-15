<template>
  <v-app id="inspire">
    <v-navigation-drawer 
      v-model="drawer"
      app>
      <v-list-item>
        <v-list-item-content>
          <v-list-item-title class="text-h6">
            ToDo App
          </v-list-item-title>
          <v-list-item-subtitle>
            Using Vue
          </v-list-item-subtitle>
        </v-list-item-content>
      </v-list-item>

      <v-divider></v-divider>

      <v-list
        dense
        nav
      >
        <v-list-item
          v-for="item in items"
          :key="item.title"
          :to="item.to"
          link
        >
          <v-list-item-icon>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
  <v-app-bar app id="a">
      <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>

      <v-toolbar-title>TODO | HOME</v-toolbar-title>
    </v-app-bar>


  </v-app>
</template>

<script>
  export default {
    data: () => ({ 
      drawer: null, 
      items: [
          { title: 'To-Do List', icon: 'mdi-view-dashboard',to:'/' },
          { title: 'Done', icon: 'mdi-check-all',to:'/done' },
          { title: 'About', icon: 'mdi-help-box',to:'/about' },
          
        ],  
      }),
    
  }
</script>