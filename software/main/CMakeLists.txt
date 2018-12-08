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

add_executable(${PROJECT_NAME} ${SOURCES})
target_link_libraries(${PROJECT_NAME} smooth)

# Place binary output in top-level build directory so that idf.py can find it.
set_target_properties( ${PROJECT_NAME}
        PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/.."
        )

