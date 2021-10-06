<template>
    <v-card
    class="mx-auto"
    width="500"
    outlined
  >
    <v-list-item three-line>
      <v-list-item-content>
        <div class="text-overline mb-4">
          {{ questions[questionIndex].question }}
        </div>
        <v-list-item-title class="text-h5 mb-1">
        question ???
        </v-list-item-title>
        <div class="ml-3">
        <v-radio-group v-model="radioGroup">
          <v-radio
            v-for="n in 3"
            :key="n"
            :label="`Radio ${n}`"
            :value="n"
          ></v-radio>
        </v-radio-group>
        </div>
      </v-list-item-content>
    </v-list-item>

    <v-card-actions>
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
        resp:{
          choices: {
            choiceA:'asasa',
            choiceB:'sdsaadas'
          }
        },
        examId: '',
        radioGroup: '',
        questions: '',
        questionIndex: 0
      }
    },
    created() {
      this.examId = new URL(location.href).searchParams.get('examId');
      this.loadQuestions()
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
        // this.$axios(options).then((resp) => {
        //   console.log(resp);
        // })
        // this.$axios(options).then((response) => {
        //   console.log(response.data)
        // })
        let self = this
      await axios.get(options.url+'?id'+this.examId)
      .then(function (response) {
        self.questions = response.data;
        console.log(self.questions);
        // console.log(response);
      })
      },
      getNextQuestion() {
        this.questionIndex++
      }
    }
  }
</script>

<!-- Added "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .card-margin {
  margin-bottom: 10px;
  height: 200px;
  width: 650px;
  }
  .question {
    width: 75%
}

.options {
    position: relative;
    padding-left: 40px
}

#options label {
    display: block;
    margin-bottom: 15px;
    font-size: 14px;
    cursor: pointer
}

.options input {
    opacity: 0
}

.checkmark {
    position: absolute;
    top: -1px;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #555;
    border: 1px solid #ddd;
    border-radius: 50%
}

.options input:checked~.checkmark:after {
    display: block
}

.options .checkmark:after {
    content: "";
    width: 10px;
    height: 10px;
    display: block;
    background: white;
    position: absolute;
    top: 50%;
    left: 50%;
    border-radius: 50%;
    transform: translate(-50%, -50%) scale(0);
    transition: 300ms ease-in-out 0s
}

.options input[type="radio"]:checked~.checkmark {
    background: #21bf73;
    transition: 300ms ease-in-out 0s
}

.options input[type="radio"]:checked~.checkmark:after {
    transform: translate(-50%, -50%) scale(1)
}

.btn-primary {
    background-color: #555;
    color: #ddd;
    border: 1px solid #ddd
}

.btn-primary:hover {
    background-color: #21bf73;
    border: 1px solid #21bf73
}

.btn-success {
    padding: 5px 25px;
    background-color: #21bf73
}

@media(max-width:576px) {
    .question {
        width: 100%;
        word-spacing: 2px
    }
}
  
</style>