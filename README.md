# IO-Card G3

This is my custom I/O card, third generation. Main purpose is to serve as an alarm system.

## Hardware features

- 8 analog inputs for detecting changes in resistance (a.k.a balanced line).
- 8 digital inputs, 3.3-24V
- 8 digital outputs, 5/12V, fused.
- 6 controllable status LED.
- Optional BME280
- Wiegand interface
- On-board buzzer.
- SD Card (SPI and MMC bus selectable)
- JTAG debugging (when SD Card is using SPI)
- LED indicators for all input and outputs.
- Screw terminals for all interfaces.
- MCU: ESP32 Wrover Module
- Powered by 12V DC.

## Software

- Web interface for configuration and status monitoring.
- MQTT for control and monitoring.

### Software overview

#### Feature specification / task list

- NTP
  Based on config, synchronize clock with NTP server every 15 minutes.
- I2C
  - On interrupt on `ANALOG_RDY_1` or `ANALOG_RDY_2`, read analog values; publish internally.
  - On interrupt on `DIA_Interrupt`, read digital input values; publish internally.
  - Periodically read BME280 values and publish internally (&lt;id&gt;/io/status/sensor)
  - Receive control events and set digital outputs accordingly.
    - Also handle `SIREN_CTRL`, even though it is not on the I2C bus.
- MQTT
  - All payloads must be JSON-formated.
  - Periodically publish all I/O statuses on the following topics:
    - `<ID>`/io/status/digital/input/&lt;number&gt;
    - `<ID>`/io/status/digital/output/&lt;number&gt;
    - `<ID>`/io/status/analog/input/&lt;number&gt;
    - `<ID>`/io/status/buzzer
    - `<ID>`/io/status/siren
    - Publish Wiegand button sequences on topic `<ID>`/io/status/wiegand
    - If enabled in configuration, allow I/O to be controlled via topic `<ID>/io/set/channel_no`, where `channel_no` is a number between 0 and 7.
  - All published items shall have a `unix_timestamp` value which tells when the item was created.
  - a value of `true` shall be interpreted as 'active', regardless if the input/output is active high or low. i.e. if the buzzer is making sounds, the the status is `true`.
  - All topics can be renamed via configuration.
    - The special string `@ID@` is used to signify the ID of the device. Any instance of it in the replacement topic will be replaced with the device ID.
    - Once a topic is renamed, the original one ceases to function until the renaming is removed from the configuration.
- Wiegand
  - Listen to button presses and publish internally.  
  - Each series must end with the `execute_button` button, usually '#' (but as its numerical button value). Any press on the `cancel_button` (*) clears any already entered numbers from the buffer.
  - If no input is received during `entry_timeout` milliseconds, the bufer is cleared and no number series is published.
- Alarm
  - Based on configuration, do:
    - Play sound using the buzzer when any armed I/O with an `entry_delay` larger than 0 changes state, for the duration of the delay.
    - Sound siren for X minutes when any input marked as `armed` no longer matches its configured `armed_state`. For analog inputs this means a value outside the range of `value` +/- `allowed_hysteresis`.
      - Delay for the configured `entry_delay` if the triggering input has one larger than 0. Immediately sound the siren if an input other than the first is triggered during the wait time.
    - Silence siren after X minutes, regardless if an IO marked as `armed` has returned to its `armed_state` or not.
      - Do not sound the siren again until after Y minutes.
    - Inputs with `active` set to `false` are never considered for any operation.

#### Startup procedure

- Initialize I2C Bus.
  - 2x MCP23017
  - 2x ADS1115IDGST
  - Optional BME280.
- Read `SD_ENABLE` to determine the mode for the SD Card.
  - Initialize SD Card.
    - If initialization fails, pause for a short amount of time and retry X times.
    - If initialization fails Y times, power cycle SD Card and try again.
- Read device `ID` from configuration.
  - If not set, generate a random number and set `ID` to `IOG3_<number>`.
- Start Wifi
- Start MQTT worker
- Start I2C worker
- Start Wiegand worker
- Start Alarm worker

## Rendering of the PCB

(sorry, no 3D models for some components)

![PCB Rendering](hardware/pcb-rendering-2018-10-17.png)

## Configuration file examples

`alarm.jsn`

```json
{
	"sensors":	{
		"digital":	{
			"input":	{
				"0":	{
					"name":	"D0",
					"enabled":	true,
					"armed_state":	true,
					"entry_delay":	5,
					"exit_delay":	5
				},
				"1":	{
					"name":	"1",
					"enabled":	false,
					"armed_state":	true,
					"entry_delay":	0,
					"exit_delay":	0
				},
				"2":	{
					"name":	"2",
					"enabled":	false,
					"armed_state":	true,
					"entry_delay":	0,
					"exit_delay":	0
				},
				"3":	{
					"name":	"3",
					"enabled":	false,
					"armed_state":	true,
					"entry_delay":	0,
					"exit_delay":	0
				},
				"4":	{
					"name":	"4",
					"enabled":	false,
					"armed_state":	true,
					"entry_delay":	0,
					"exit_delay":	0
				},
				"5":	{
					"name":	"5",
					"enabled":	false,
					"armed_state":	true,
					"entry_delay":	0,
					"exit_delay":	0
				},
				"6":	{
					"name":	"6",
					"enabled":	false,
					"armed_state":	true,
					"entry_delay":	0,
					"exit_delay":	0
				},
				"7":	{
					"name":	"7",
					"enabled":	false,
					"armed_state":	true,
					"entry_delay":	0,
					"exit_delay":	0
				}
			},
			"output":	{
				"0":	{
					"name":	"0",
					"allow_external_control":	true
				},
				"1":	{
					"name":	"1",
					"allow_external_control":	true
				},
				"2":	{
					"name":	"2",
					"allow_external_control":	true
				},
				"3":	{
					"name":	"3",
					"allow_external_control":	true
				},
				"4":	{
					"name":	"4",
					"allow_external_control":	true
				},
				"5":	{
					"name":	"5",
					"allow_external_control":	true
				},
				"6":	{
					"name":	"6",
					"allow_external_control":	true
				},
				"7":	{
					"name":	"7",
					"allow_external_control":	true
				}
			}
		},
		"analog":	{
			"input":	{
				"0":	{
					"name":	"0",
					"enabled":	true,
					"allowed_range":	{
						"min":	10000,
						"max":	14000
					},
					"entry_delay":	0,
					"exit_delay":	0
				},
				"1":	{
					"name":	"1",
					"enabled":	false,
					"allowed_range":	{
						"min":	10000,
						"max":	14000
					},
					"entry_delay":	0,
					"exit_delay":	0
				},
				"2":	{
					"name":	"2",
					"enabled":	false,
					"allowed_range":	{
						"min":	10000,
						"max":	14000
					},
					"entry_delay":	0,
					"exit_delay":	0
				},
				"3":	{
					"name":	"3",
					"enabled":	false,
					"allowed_range":	{
						"min":	10000,
						"max":	14000
					},
					"entry_delay":	0,
					"exit_delay":	0
				},
				"4":	{
					"name":	"4",
					"enabled":	false,
					"allowed_range":	{
						"min":	10000,
						"max":	14000
					},
					"entry_delay":	0,
					"exit_delay":	0
				},
				"5":	{
					"name":	"5",
					"enabled":	false,
					"allowed_range":	{
						"min":	10000,
						"max":	14000
					},
					"entry_delay":	0,
					"exit_delay":	0
				},
				"6":	{
					"name":	"6",
					"enabled":	false,
					"allowed_range":	{
						"min":	10000,
						"max":	14000
					},
					"entry_delay":	0,
					"exit_delay":	0
				},
				"7":	{
					"name":	"7",
					"enabled":	false,
					"allowed_range":	{
						"min":	10000,
						"max":	14000
					},
					"entry_delay":	0,
					"exit_delay":	0
				}
			}
		}
	},
	"section":	[{
			"name":	"all",
			"digital":	[7],
			"analog":	[7]
		}],
	"codes":	[{
			"user":	"Default user",
			"verification_data":	"$argon2i$v=19$m=8,t=8,p=1$qoM58bCkv0Pqu4P+USzH2g$iIjDNYha1Ab0H1o+wSv7xXZted1obgT7GGxm6XM5tVw"
		}],
	"timing":	{
		"timeout":	{
			"triggered":	60,
			"silence":	60
		}
	}
}
```

`dev_id.jsn`

```json
{
	"device_id":	"g3"
}
```

`mqtt.jsn`

```json
{
	"keep_alive_seconds":	15,
	"broker":	{
		"address":	"1.2.3.4",
		"port":	1883
	}
}
```

`notes.jsn`

```json
{
	"entry_delay": {
		"signal": [500, 500],
		"repeat": true
	},
	"exit_delay": {
		"signal": [1500, 500],
		"repeat": true
	},
	"error": {
		"signal": [250, 250, 250, 250, 250],
		"repeat": false
	},
	"armed": {
		"signal": [800, 200, 800, 200, 800],
		"repeat": false
	},
	"disarmed": {
		"signal": [800, 200, 800, 200],
		"repeat": false
	},
	"key_entry_timeout": {
		"signal": [200, 200, 200, 200, 200, 200],
		"repeat": false
	}
}
```

`sntp.jsn`

```
{
	"sntp_servers":	["0.se.pool.ntp.org", "1.se.pool.ntp.org", "2.se.pool.ntp.org"]
}
```

`wifi.jsn`

```json
{
	"ssid":	"Your SSID",
	"password":	"Your password"
}
```
