<template>
  <div id="app">
    <div style="text-align: left">
      <img src="./assets/bullet_green.png" v-show="this.root.vm.status_toggle" />
      <img src="./assets/bullet_yellow.png" v-show="!this.root.vm.status_toggle" />
    </div>
    <table>
      <caption>Environment</caption>
      <tr>
        <td>Temperature</td>
        <td>{{root.vm.environment.temperature}}</td>
      </tr>
      <tr>
        <td>Humidity</td>
        <td>{{root.vm.environment.humidity}}</td>
      </tr>
      <tr>
        <td>Pressure</td>
        <td>{{root.vm.environment.pressure}}</td>
      </tr>
    </table>
    <br />
    <button v-on:click="request_config">Request config</button>
    <button v-on:click="apply_config" :hidden="!root.vm.state.config_loaded">Apply config</button>
    <table>
      <caption>Digital Inputs Settings</caption>
      <th>Name</th>
      <th>Enabled</th>
      <th>Armed state</th>
      <th>Entry delay</th>
      <th>Exit delay</th>
      <th>Current status</th>
      <DigitalInput
        v-for="(input, index, name) in root.config.sensors.digital.input"
        v-bind:key="name"
        :settings="root.config.sensors.digital.input[name]"
        :status="root.vm.state.digital.input[index]"
      />
    </table>
    <hr />
    <table>
      <caption>Digital Output</caption>
      <th>Name</th>
      <th>Allow external control</th>
      <th>Current status</th>
      <DigitalOutput
        v-for="(input, index, name) in root.config.sensors.digital.output"
        v-bind:key="index"
        :settings="root.config.sensors.digital.output[name]"
        :status="root.vm.state.digital.output[index]"
      />
    </table>
    <hr />
    <table>
      <caption>Analog Input</caption>
      <th>Name</th>
      <th>Enabled</th>
      <th>Min</th>
      <th>Max</th>
      <th>Entry delay</th>
      <th>Exit delay</th>
      <th>Current value</th>
      <AnalogInput
        v-for="(input, index, name) in root.config.sensors.analog.input"
        v-bind:key="index"
        :settings="root.config.sensors.analog.input[name]"
        :status="root.vm.state.analog.input[index]"
      />
    </table>
    <hr />
    <table>
      <caption>Users</caption>
      <tr>
        <th>Name</th>
        <th>Pin code</th>
      </tr>
      <User
        v-for="(input, index) in root.config.codes"
        v-bind:key="index"
        :user_data="root.config.codes[index]"
        :user_index="index"
        v-on:delete_user="delete_user"
      />
      <tfoot>
        <button v-on:click="add_default_user">Add user</button>
      </tfoot>
    </table>
    <hr />
    <table>
      <caption>Timings</caption>
      <tr>
        <th>Triggered</th>
        <th>Silence</th>
      </tr>
      <Timeout :settings="root.config.timing.timeout" />
    </table>
  </div>
</template>

<script>
import Vue from 'vue'
import DigitalInput from './components/DigitalInput.vue'
import DigitalOutput from './components/DigitalOutput.vue'
import AnalogInput from './components/AnalogInput.vue'
import User from './components/User.vue'
import Timeout from './components/Timeout.vue'
import VueNativeSock from 'vue-native-websocket'

let url = ((window.location.protocol === 'https:') ? 'wss://' : 'ws://') + window.location.host + '/data'
// let url = (window.location.protocol === 'https:' ? 'wss://' : 'ws://localhost:8081') + '/data'

document.title = 'G3'

Vue.use(VueNativeSock, url, {
  format: 'json',
  reconnection: true,
  reconnectionDelay: 1000
})

export default {
  name: 'app',
  data: function () {
    return {
      root: {
        vm: {
          environment: {
            temperature: 0,
            humidity: 0,
            pressure: 0
          },
          status_toggle: false,
          state: {
            config_loaded: false,
            config_auto_requested: false,
            digital: {
              input: [],
              output: []
            },
            analog: {
              input: []
            }
          }
        },
        config: {
          sensors: {
            digital: {
              input: {},
              output: {}
            },
            analog: {
              input: []
            }
          },
          codes: [],
          timing: {
            timeout: {
              triggered: 60,
              silence: 60
            }
          }
        }
      }
    }
  },
  components: {
    DigitalInput,
    DigitalOutput,
    AnalogInput,
    User,
    Timeout
  },
  created: function () {
    this.$options.sockets.onmessage = msg =>
      this.messageReceived(JSON.parse(msg.data))
  },
  methods: {
    messageReceived: function (data) {
      if (!this.root.vm.state.config_auto_requested) {
        this.root.vm.state.config_auto_requested = true
        this.request_config()
      }

      if ('alarm_config' in data) {
        this.root.config = data.alarm_config
        this.root.vm.state.config_loaded = true
      } else if ('environment' in data) {
        this.root.vm.environment.humidity = data.environment.humidity
        this.root.vm.environment.pressure = data.environment.pressure
        this.root.vm.environment.temperature = data.environment.temperature
      } else if ('input' in data) {
        if ('digital' in data.input) {
          Vue.set(this.root.vm.state.digital.input, data.input.digital.input, data.input.digital)
        } else if ('analog' in data.input) {
          Vue.set(this.root.vm.state.analog.input, data.input.analog.input, data.input.analog)
        }
      } else if ('output' in data) {
        Vue.set(this.root.vm.state.digital.output, data.output.digital.output, data.output.digital)
      } else if ('ping' in data) {
        this.root.vm.status_toggle = !this.root.vm.status_toggle
      }
    },
    request_config: function () {
      this.$socket.sendObj({ command: { request_config: true } })
    },
    apply_config: function () {
      var o = {
        command: {
          apply_config: true,
          data: this.root.config }
      }

      this.$socket.sendObj(o)
    },
    add_default_user: function () {
      this.root.config.codes.push(
        {
          user: '',
          code: ''
        })
    },
    delete_user: function (index) {
      this.root.config.codes.splice(index, 1)
    }
  }
}
</script>
