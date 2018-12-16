cmake_minimum_required(VERSION 3.10)

project(g3)

set(SOURCES main.cpp
        alarm/Alarm.cpp
        alarm/state/Armed.h
        alarm/state/BaseState.h
        alarm/state/EntryDelay.h
        alarm/state/ExitDelay.h
        alarm/state/Idle.h
        alarm/state/Triggered.h
        App.cpp
        DeviceId.cpp        
        network/Wifi.cpp
        io/I2CTask.h
        io/I2CTask.cpp
        io/analog/AnalogCycler.h
        io/analog/AnalogCycler.cpp
        io/analog/AnalogValue.h
        io/digital/I2CSetOutputCmd.h
        io/digital/I2CSetOutputCmd.h
        io/led_pin_output_number.h
        network/Mqtt.cpp
        network/Mqtt.h        
        network/Sntp.cpp
        )

add_executable(${PROJECT_NAME} ${SOURCES})
target_link_libraries(${PROJECT_NAME} smooth)
set_target_properties(${PROJECT_NAME} PROPERTIES INCLUDE_DIRECTORIES ${CMAKE_CURRENT_LIST_DIR})

# Place binary output in top-level build directory so that idf.py can find it.
set_target_properties( ${PROJECT_NAME}
        PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/.."
        )

