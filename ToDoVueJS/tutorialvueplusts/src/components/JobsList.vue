<template>
    <div class="job-list">
        <ul>
            <li v-for="job in jobs" :key="job.id"></li>
        </ul>
    </div>
</template>


<script lang="ts">
import { defineComponent, PropType } from 'vue'
import Job from '@/types/job'

export default defineComponent({
    props: {
        jobs: {
            required: true,
            type: Array as PropType<Job[]>
        }
    }
})
</script>

<style>

</style>