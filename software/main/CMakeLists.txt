cmake_minimum_required(VERSION 3.10)

project(g3)

set(SOURCES main.cpp
        App.cpp
        AnalogCycler.h
        AnalogCycler.cpp
        AnalogValue.h
        I2CSetOutputCmd.h
        I2CTask.h
        I2CTask.cpp
        I2CSetOutputCmd.h
        led_pin_output_number.h)

add_executable(g3 ${SOURCES})
target_link_libraries(g3 smooth)

