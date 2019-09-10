<template>
    <tr>
      <td><input v-model="settings.name" placeholder="Enter input name"/></td>
      <td><input v-model="settings.enabled" type="checkbox"/></td>
      <td><input v-model.number="settings.allowed_range.min" type="number"/></td>
      <td><input v-model.number="settings.allowed_range.max" type="number"/></td>
      <td><input v-model.number="settings.entry_delay" type="number" id="entry_delay"/></td>
      <td><input v-model.number="settings.exit_delay" type="number" id="exit_delay"/></td>
      <td>{{status == undefined ? '-' : status.value}}</td>
    </tr>
</template>

<script>
export default {
  name: 'AnalogInput',
  props: {
    settings: Object,
    status: Object
  }
}
</script>
