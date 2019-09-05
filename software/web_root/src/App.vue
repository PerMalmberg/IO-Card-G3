<template>
  <div id="app">
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
        <td>Preassure</td>
        <td>{{root.vm.environment.preassure}}</td>
      </tr>
    </table>
    <br/>
    <button v-on:click="request_config">Request config</button>
    <table>
      <caption>Digital Inputs Settings</caption>
      <th>Name</th>
      <th>Enabled</th>
      <th>Armed state</th>
      <th>Entry delay</th>
      <th>Exit delay</th>
      <DigitalInput
        v-for="(input, name) in root.config.sensors.digital.input"
        v-bind:key="name"
        :settings="root.config.sensors.digital.input[name]"
      />
      <tfoot>
        <button
          v-on:click="fake_first_input"
          v-if="root.config.sensors.digital.input['0'] == undefined"
        >Fake first</button>
      </tfoot>
    </table>
    <hr />
    <table>
      <caption>Digital Output Settings</caption>
      <th>Name</th>
      <th>Allow external control</th>
      <DigitalOutput
        v-for="(input, name) in root.config.sensors.digital.output"
        v-bind:key="name"
        :settings="root.config.sensors.digital.output[name]"
      />
      <tfoot>
        <button
          v-on:click="fake_first_output"
          v-if="root.config.sensors.digital.output['0'] == undefined"
        >Fake first</button>
      </tfoot>
    </table>
    <hr />
    <table>
      <caption>Analog Input Settings</caption>
      <th>Name</th>
      <th>Enabled</th>
      <th>Min</th>
      <th>Max</th>
      <th>Entry delay</th>
      <th>Exit delay</th>
      <AnalogInput
        v-for="(input, name) in root.config.sensors.analog.input"
        v-bind:key="name"
        :settings="root.config.sensors.analog.input[name]"
      />
      <tfoot>
        <button
          v-on:click="fake_first_analog_input"
          v-if="root.config.sensors.analog.input['0'] == undefined"
        >Fake first</button>
      </tfoot>
    </table>
    <hr />
    <table>
      <caption>Users</caption>
      <th>Name</th>
      <th>Passcode</th>
      <User v-for="(input, index) in root.config.codes" v-bind:key="index" :settings="root.config.codes[index]" />
      <tfoot>
        <button v-on:click="add_default_user" v-if="root.config.codes.length == 0">Add default user</button>
      </tfoot>
    </table>
    <hr />
    <table>
      <caption>Timings</caption>
      <th>Triggered</th>
      <th>Silence</th>
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

// let url = ((window.location.protocol === 'https:') ? 'wss://' : 'ws://') + window.location.host + '/data'
let url =
  (window.location.protocol === 'https:' ? 'wss://' : 'ws://localhost:8081') +
  '/data'
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
            preassure: 0
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
      if ('alarm_config' in data) {
        this.root.config = data.alarm_config
      } else if ('sensor' in data) {
        this.root.vm.environment['humidity'] = data['sensor']['humidity']
        this.root.vm.environment.pressure = data['sensor']['pressure']
        this.root.vm.environment.temperature = data['sensor']['temperature']
      }
    },
    request_config: function () {
      this.$socket.sendObj({ command: { request_config: true } })
    },
    fake_first_input: function () {
      Vue.set(this.root.config.sensors.digital.input, '0', {
        name: 'Fake',
        enabled: false,
        armed_state: true,
        entry_delay: 5,
        exit_delay: 5
      })
    },
    fake_first_output: function () {
      Vue.set(this.root.config.sensors.digital.output, '0', {
        name: '0',
        allow_external_control: true
      })
    },
    fake_first_analog_input: function () {
      Vue.set(this.root.config.sensors.analog.input, '0', {
        name: '0',
        enabled: true,
        allowed_range: {
          min: 10000,
          max: 14000
        },
        entry_delay: 0,
        exit_delay: 0
      })
    },
    add_default_user: function () {
      Vue.set(this.root.config.codes, 0, {
        name: 'Owner',
        verification_data: null
      })
    }
  }
}
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
