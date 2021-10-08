<template>
  <v-card
  class="mx-auto"
  width="500"
  outlined
  >
  <v-list-item three-line>
    <v-list-item-content>
      <div class="text-overline mb-4">
        Vaave Exam 2021
      </div>
      <v-list-item-title class="text-h5 mb-1" v-if="examStatus">
        {{ questions[questionIndex].question }}
      </v-list-item-title>
      <div class="ml-3">
        <v-radio-group v-model="radioGroup" v-if="examStatus">
          <v-radio
          v-for="qtn in JSON.parse(questions[questionIndex].choice_data)"
          :key="qtn.Choice"
          :label="qtn.Option"
          :value="qtn.Choice"
          ></v-radio>
        </v-radio-group>
        <div v-else-if = "examStatus == false">
          <p v-if ="questionIndex != -1">
            Your Score is {{ score }}  
          </p>
          <v-btn
          outlined
          rounded
          text
          @click="restartExam()"
          >
          Restart Exam
        </v-btn>
      </div>
    </div>
  </v-list-item-content>
</v-list-item>
<v-card-actions v-if="examStatus">
  <v-btn
  outlined
  rounded
  text
  @click="getNextQuestion()"
  >
  Next
</v-btn>
</v-card-actions>
</v-card>
</template>

<script>
  import axios from 'axios'
  export default {
    name: 'examination',
    components:{
    },
    data () {
      return {
        examId: '',
        questions: '',
        questionIndex: 0,
        score: 0,
        examStatus:true,
        storeResp: []
      }
    },
    created() {
      this.examId = new URL(location.href).searchParams.get('examId');
      this.loadQuestions()
      // getting the data from the local storage 
      this.questionIndex = localStorage.getItem('questionIndex')?localStorage.getItem('questionIndex'):0
      this.score = localStorage.getItem('finalScore')?parseInt(localStorage.getItem('finalScore')):0
      // questionIndex  is -1 when test is over, examStatus updating to -1 in that case
      if(this.questionIndex == -1) {
        this.examStatus = false
      }
    },
    methods: {
      //getting questions from the API call
      async loadQuestions() {
        let self = this
        await axios.get('http://localhost:5000/examination/get-questions?id='+this.examId)
        .then(function (response) {
          self.questions = response.data;
        })
      },
      //redirect to home page to restart the exam
      restartExam() {
        this.$router.push('/') 
      },
      getNextQuestion() {
        let selectedChoice = this.radioGroup;
        let qIndex = this.questionIndex
        let correctChoice = this.questions[qIndex].correct_choice
        let questionScore = this.questions[qIndex].score
        let questionId = this.questions[qIndex].id
        let resParams = ''

        if(selectedChoice == correctChoice) {
          this.score+=questionScore
        }
        this.radioGroup = '';
        this.questionIndex++

        let examResp = {"QuestionId": questionId, "Choice": selectedChoice,"TotalScore":this.score}
        this.storeResp.push(examResp)
        //stroring score, question index and question responses to local storage
        localStorage.setItem('examResp',JSON.stringify(this.storeResp))
        localStorage.setItem('questionIndex',this.questionIndex)
        localStorage.setItem('finalScore',this.score)
        if(!this.questions[this.questionIndex]) {
            resParams = localStorage.getItem('examResp')
            this.saveAnswer(resParams)
            this.examStatus = false
            //flusing values in the local storage
            localStorage.removeItem('examResp')
            localStorage.setItem('questionIndex',-1)
            localStorage.removeItem('finalScore')
        }
      },
      async saveAnswer(params) {
          await axios.post('http://localhost:5000/examination/save-response',params)
            .then(function (response) {
              // self.questions = response.data;
              console.log(response)
          })
      }
    }
  }
</script>

<!-- Added "scoped" attribute to limit CSS to this component only -->
<style scoped>
 
  
</style>