<template>
  <tr>
    <td colspan="2">
      <form>
        <table>
          <tr>
            <td>
              {{user_index}}
            </td>
            <td>
              <input v-model="user_data.user" placeholder="User name" />
            </td>
            <td>
              <input
                v-model="user_data.code"
                type="text"
                placeholder="Pin code"
              />
            </td>
            <td>
              <img src="../assets/delete.png" v-on:click="$emit('delete_user', 0)" />
            </td>
          </tr>
        </table>
      </form>
    </td>
  </tr>
</template>

<script>
export default {
  name: 'User',
  props: {
    user_data: Object,
    user_index: Number
  }
}
</script>
