<template>
    <tr>
      <td><input v-model="settings.name" placeholder="Enter user name"/></td>
      <td><input v-model="settings.verification_data" type="number" placeholder="Enter new code"/></td>
    </tr>
</template>

<script>
export default {
  name: 'User',
  props: {
    settings: Object
  }
}
</script>
