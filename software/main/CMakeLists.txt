cmake_minimum_required(VERSION 3.10)

project(g3)

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

add_executable(${PROJECT_NAME} ${SOURCES})
target_link_libraries(${PROJECT_NAME} smooth)
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_LIST_DIR})

include(../externals/smooth/lib/smooth/idf_utils.cmake)
idf_build_executable(${PROJECT_NAME})
include($ENV{IDF_PATH}/tools/cmake/project.cmake)
__project_info("")


# Place binary output in top-level build directory so that idf.py can find it.
set_target_properties(${PROJECT_NAME}
        PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}"
        )

