<template>
  <tr>
    <table>
      <tr>
        <td>
          <input
            v-model.number="settings.triggered"
            type="number"
            placeholder="Enter triggered timeout"
          />
        </td>
        <td>
          <input
            v-model.number="settings.silence"
            type="number"
            placeholder="Enter silence timeout"
          />
        </td>
      </tr>
    </table>
  </tr>
</template>

<script>
export default {
  name: 'Timeout',
  props: {
    settings: Object
  }
}
</script>
