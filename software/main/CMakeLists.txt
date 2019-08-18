cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 17)

set(SOURCES main.cpp
        alarm/Alarm.cpp
        alarm/AlarmConfig.cpp
        alarm/state/Armed.h
        alarm/state/Armed.cpp
        alarm/state/BaseState.h
        alarm/state/BaseState.cpp
        alarm/state/EntryDelay.h
        alarm/state/EntryDelay.cpp
        alarm/state/ExitDelay.h
        alarm/state/ExitDelay.cpp
        alarm/state/Idle.h
        alarm/state/Idle.cpp
        alarm/state/Triggered.h
        alarm/state/Triggered.cpp
        alarm/sensor/BaseSensor.cpp
        alarm/sensor/AnalogSensor.cpp
        alarm/sensor/DigitalSensor.cpp
        http/TemplateDataRetriever.h
        http/WSDataConnection.h
        http/WSDataConnection.cpp
        DataListener.h

        App.cpp
        hardware_info.h
        DeviceId.cpp
        CommandDispatcher.h
        CommandDispatcher.cpp
        io/I2CTask.h
        io/I2CTask.cpp
        io/analog/AnalogCycler.h
        io/analog/AnalogCycler.cpp
        io/analog/RawAnalogValue.h
        io/digital/I2CSetOutputCmd.h
        io/digital/I2CSetOutputCmd.h
        network/Wifi.cpp
        network/Mqtt.cpp
        network/Mqtt.h
        network/Sntp.cpp
        keypad/keypad.h
        keypad/keypad.cpp
        sound/Player.cpp
        )

idf_component_register(SRCS ${SOURCES}
        INCLUDE_DIRS
            ${CMAKE_CURRENT_LIST_DIR}
            $ENV{IDF_PATH}/components
        REQUIRES
            smooth_component
        )
