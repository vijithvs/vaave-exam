<template>
  <v-app>
    <navigation></navigation>
      <router-view/>
  </v-app>
</template>

<script>
import navigation from '@/components/Navigation.vue'
export default {
  name: 'App',
  components :{
    navigation
  },
  data: () => ({
    //
  }),
};
</script>
