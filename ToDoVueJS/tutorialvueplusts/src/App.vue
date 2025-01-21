<template>
  <div class="app">
    <!-- <p> {{ name }} - {{ age }}</p>
    <button @click="changeName('zelda')">Change name</button>
    <button @click="changeAge(30)">Change age</button> -->
    <!-- <p>{{ jobs[0].id }}</p> -->
  <JobList :jobs="jobs"/>
  </div>
</template>

<script lang="ts">
import { defineComponent, reactive, toRefs, ref } from 'vue';
import Job from './types/job';
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
    return {jobs}
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

</style>
