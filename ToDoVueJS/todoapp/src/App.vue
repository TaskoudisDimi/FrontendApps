<template>
  <div id="app">
    <TodoNotes />
  </div>
</template>

<script>
import TodoNotes from "./components/Notes";

export default {
  name: "App",
  components: {
    TodoNotes,
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  text-align: center;
  margin-top: 50px;
}
</style>
