<template>
  <div class="app">
    <header>
    <!-- <p> {{ name }} - {{ age }}</p>
    <button @click="changeName('zelda')">Change name</button>
    <button @click="changeAge(30)">Change age</button> -->
    <!-- <p>{{ jobs[0].id }}</p> -->
      <div class="order">
        <button @click="handleClick('title')">order by title</button>
        <button @click="handleClick('salary')">order by salary</button>
        <button @click="handleClick('location')">order by location</button>
      </div>
    </header>
    <JobList :jobs="jobs" :order="order" />
  </div>
</template>

<script lang="ts">
import { defineComponent, ref } from 'vue';
import Job from './types/Job';
import OrderTerm from './types/OrderTerm';
import JobList from './components/JobsList.vue';


export default defineComponent({
  name: 'App',
  components: {
    JobList
  },
  setup(){
    //Reactive
    // const state = reactive({
    //   name: 'Link',
    //   age: 25 as string | number 
    // })
    // return { ...toRefs(state) }

    //Refs
    // const name = ref('Link')
    // const age = ref<number | string>(25)
    // return {name, age}

    const jobs = ref<Job[]>([
      {title: 'Farm worker', location: 'Thessaloniki', salary: 30000, id: '1'},
      {title: 'Quarryman', location: 'Trikala', salary: 20000, id: '2'},
      {title: 'Football player', location: 'Kavala', salary: 50000, id: '3'},
      {title: 'Fisherman', location: 'Drama', salary: 90000, id: '4'},  
      {title: 'Prison Guard', location: 'Athina', salary: 80000, id: '5'}, 
    ])

    const order = ref<OrderTerm>('title')

    const handleClick = (term: OrderTerm) => {
      order.value = term
    }

    return {jobs, handleClick, order}
  },
  // data(){
  //   return{
  //     name: 'Link',
  //     age: 25 as number | string
  //   }
  // },
  // methods: {
  //   changeName(name: string){
  //     this.name = name
  //   },
  //   changeAge(age: number | string){
  //     this.age = age
  //   }
  // }
});
</script>

<style>
 header {
    text-align: center;
  }
  header .order {
    margin-top: 20px;
  }
  button {
    margin: 0 10px;
    color: #1195c9;
    border: 3px solid #1195c9;
    background: #d5f0ff;
    padding: 8px 16px;
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
  }
</style>
