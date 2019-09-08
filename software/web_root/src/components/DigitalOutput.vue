<template>
    <tr>
      <td><input v-model="settings.name" placeholder="Enter output name"/></td>
      <td><input v-model="settings.allow_external_control" type="checkbox"/></td>
      <td>{{status == undefined ? '-' : status.value}}</td>
    </tr>
</template>

<script>
export default {
  name: 'DigitalOutput',
  props: {
    settings: Object,
    status: Object
  }
}
</script>
