<template>
  <div class="home">
    <div class="card col-md-4 offset-4 card-margin" v-for="(data,index) in topics" :key="index">
      <a style="text-decoration:none"  @click="rExamination(data)">
        <div class="row">
          <div class="card-body" style="text-align: center">
            <p class="card-text">{{data.topic}}</p>
          </div>
        </div>
      </a>
    </div>
  </div>
</template>

<script>
  import axios from 'axios'
  export default {
    name: 'home',
    data () {
      return {
        msg: 'Welcome to Your Vue.js App',
        topics: {},
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
    },
    created() {
      this.loadQuestions()
    },
    methods: {
       async loadQuestions() {
        let self = this
      await axios.get('http://localhost:5000/examination/get-topics')
      .then(function (response) {
        self.topics = response.data
    })
      },
      rExamination(data) {
        this.$router.push('examination?examId='+data.id) 
         localStorage.removeItem('examResp')
          localStorage.removeItem('questionIndex')
          localStorage.removeItem('finalScore')
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