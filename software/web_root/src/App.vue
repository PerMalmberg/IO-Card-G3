<template>
  <div id="app">
    <table>
      <caption>Digital Inputs Settings</caption>
      <th>Name</th>
      <th>Enabled</th>
      <th>Armed state</th>
      <th>Entry delay</th>
      <th>Exit delay</th>
      <DigitalInput
        v-for="(input, name) in sensors.digital.input"
        v-bind:key="name"
        :settings="sensors.digital.input[name]"
      />
      <tfoot>
        <button
          v-on:click="fake_first_input"
          v-if="sensors.digital.input['0'] == undefined"
        >Fake first</button>
      </tfoot>
    </table>
    <hr />
    <table>
      <caption>Digital Output Settings</caption>
      <th>Name</th>
      <th>Allow external control</th>
      <DigitalOutput
        v-for="(input, name) in sensors.digital.output"
        v-bind:key="name"
        :settings="sensors.digital.output[name]"
      />
      <tfoot>
        <button
          v-on:click="fake_first_output"
          v-if="sensors.digital.output['0'] == undefined"
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
        v-for="(input, name) in sensors.analog.input"
        v-bind:key="name"
        :settings="sensors.analog.input[name]"
      />
      <tfoot>
        <button
          v-on:click="fake_first_analog_input"
          v-if="sensors.analog.input['0'] == undefined"
        >Fake first</button>
      </tfoot>
    </table>
  </div>
</template>

<script>
import Vue from 'vue'
import DigitalInput from './components/DigitalInput.vue'
import DigitalOutput from './components/DigitalOutput.vue'
import AnalogInput from './components/AnalogInput.vue'

export default {
  name: 'app',
  data: function () {
    return {
      sensors: {
        digital: {
          input: {},
          output: {}
        },
        analog: {
          input: []
        }
      },
      digital_output: [],
      analog_input: [],
      environment_sensor: {}
    }
  },
  components: {
    DigitalInput,
    DigitalOutput,
    AnalogInput
  },
  methods: {
    fake_first_input: function () {
      Vue.set(this.sensors.digital.input, '0', {
        name: 'Fake',
        enabled: false,
        armed_state: true,
        entry_delay: 5,
        exit_delay: 5
      })
    },
    fake_first_output: function () {
      Vue.set(this.sensors.digital.output, '0', {
        name: '0',
        allow_external_control: true
      })
    },
    fake_first_analog_input: function () {
      Vue.set(this.sensors.analog.input, '0', {
        name: '0',
        enabled: true,
        allowed_range: {
          min: 10000,
          max: 14000
        },
        entry_delay: 0,
        exit_delay: 0
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
