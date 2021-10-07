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
            v-for="image in JSON.parse(questions[questionIndex].choice_data)"
            :key="image.Choice"
            :label="image.Option"
            :value="image.Choice"
          ></v-radio>
        </v-radio-group>
          <div v-else-if= "questionIndex != -1 && examStatus == false">
            Your Score is {{ score }}
          </div>
          <div v-if="questionIndex == -1">
              Thank you for attending the exam!
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
      // axios
    },
    data () {
      return {
        examId: '',
        questions: '',
        questionIndex: 0,
        images: [{imgId:1,name:'qw'},{imgId:2,name:'sadda'},{imgId:3,name:'sdasdsa'}],
        sample: [],
        score: 0,
        examStatus:true,
        storeResp: []
      }
    },
    created() {
      this.examId = new URL(location.href).searchParams.get('examId');
      this.loadQuestions()
      this.questionIndex = localStorage.getItem('questionIndex')?localStorage.getItem('questionIndex'):0
      this.score = localStorage.getItem('finalScore')?localStorage.getItem('finalScore'):0
      if(this.questionIndex == -1) {
        this.examStatus = false
      }
    },
    methods: {
      async loadQuestions() {
        let options = {
          url: 'http://localhost:5000/examination/get-questions',
          method: 'GET',
          data: {
            id: this.examId,
          }
        }
        let self = this
      await axios.get(options.url+'?id'+this.examId)
      .then(function (response) {
        self.questions = response.data;
    })
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
            let examResp = {"QuestionId": questionId, "Choice": selectedChoice,"TotalScore":this.score}
            this.storeResp.push(examResp)
            localStorage.setItem('examResp',JSON.stringify(this.storeResp))
            localStorage.setItem('questionIndex',qIndex)
            localStorage.setItem('finalScore',this.score)
            // saveAnswer()
            this.radioGroup = '';
            this.questionIndex++
        if(!this.questions[this.questionIndex]) {
          resParams = localStorage.getItem('examResp')
          this.saveAnswer(resParams)
          this.examStatus = false
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