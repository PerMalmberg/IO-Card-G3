<template>
  <tr>
    <td colspan="2">
      <form>
        <table>
          <tr>
            <td>
              <input v-model="settings.user" placeholder="Enter user name" />
            </td>
            <td>
              <input
                v-model="settings.verification_data"
                type="number"
                placeholder="Enter new code"
              />
            </td>
            <td>
              <img src="../assets/delete.png" />
            </td>
            <td>
              <img src="../assets/add.png" v-on:click="add_user()"/>
            </td>
            <td>
              <img src="../assets/bullet_green.png" />
              <img src="../assets/bullet_yellow.png" />
              <img src="../assets/bullet_red.png" />
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
    settings: Object
  },
  methods: {
    add_user: function () {
      this.$socket.sendObj({ foo: 1 })
    }
  }
}
</script>
