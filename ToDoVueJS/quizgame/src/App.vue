<template>
  <main class="app">
    <h1>The Quiz</h1>
    
    <section class="quiz">
      <div class="quiz-info">
        <span class="question">{{ getCurrentQuestion.question }}</span>
        <span class="score">Score {{ score }}//{{ question.length }}</span>
      </div>

      <div class="options">
        <label 
        v-for="(option, index) in getCurrentQuestion.options" 
        :key="index"
        :class="`option ${
          getCurrentQuestion.selected == index
          ? index == getCurrentQuestion.answer
            ? 'correct'
            : 'wrong'
          : ''
        } ${
          getCurrentQuestion.selected != null &&
          index != getCurrentQuestion.selected
            ? 'disabled'
            : ''
        }
        `">
        <input 
          type="radio" 
          :name="getCurrentQuestion.index"
          :value="index">
        </label>
      </div>
    </section>
  </main>
</template>

<script setup>
import {ref, computed } from 'vue'

const questions = ref([
    {
      question: 'What is Vue JS',
      answer: 0,
      options: [
        'A Front end framework',
        'A library',
        'An ice cream maker'
      ],
      selected: null
    },
    {
      question: 'What is Vuex',
      answer: 0,
      options: [
        'Vue with an x',
        'A cheese selection',
        'State management library'
      ],
      selected: null
    },
])

// const quizCompleted = ref(false)
const currentQuestion = ref(0)
const score = computed(() =>{
  let value = 0
  questions.value.map(q => {
    if(q.selected == q.answer){
      value++
    }
  })
  return value
})

const getCurrentQuestion = computed(() =>{
  let question = questions.value[currentQuestion.value]
  question.index = currentQuestion.value
  return question
})

// const SetAnswer = e =>{
//   questions.value[currentQuestion.value].selected = e.target.value
//   e.target.value = null
// }

// const NextQuestion = () =>{
//   if( currentQuestion.value < questions.value.length - 1){
//     currentQuestion.value++
//   } else{
//     quizCompleted.value = true
//   }
// }

</script>

<style>
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Montserrat', sans-serif;
}

body{
  background-color: blanchedalmond;
  color: #000000
}
</style>
