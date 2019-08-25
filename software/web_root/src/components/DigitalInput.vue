<template>
    <tr>
      <td><input v-model="settings.name" placeholder="Enter input name"/></td>
      <td><input v-model="settings.enabled" type="checkbox"/></td>
      <td><input v-model="settings.armed_state" type="checkbox"/></td>
      <td><input v-model.number="settings.entry_delay" type="number" id="entry_delay"/></td>
      <td><input v-model.number="settings.exit_delay" type="number" id="exit_delay"/></td>
    </tr>
</template>

<script>
export default {
  name: 'DigitalInput',
  props: {
    settings: Object
  }
}
</script>
<!-- td><img v-if="input_data.enabled" src='../assets/accept.png'/><img v-else src="../assets/stop.png"/> </td -->
