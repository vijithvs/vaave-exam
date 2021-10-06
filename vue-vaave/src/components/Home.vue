<template>
  <div class="home">
    <div class="card col-md-4 offset-4 card-margin" v-for="(data,index) in products" :key="index">
      <a :href="'examination?examId='+data.topicId">
        <div class="row">
          <div class="card-body">
            <p class="card-text">{{data.productTitle}}</p>
          </div>
        </div>
      </a>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'home',
    data () {
      return {
        msg: 'Welcome to Your Vue.js App',
        products:[
          {
            productTitle:"ABCN",
            topicId:1,

          },
          {
            productTitle:"KARMA",
            topicId:2
          },
          {
            productTitle:"Tino",
            image       : require('../assets/logo.png'),
            topicId:3
          }
        ]
      }
    }
  }
</script>

<!-- Added "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .card-margin {
  margin-bottom: 10px;
  }
  .card:hover {
  background-color: #838587;
  }
</style>