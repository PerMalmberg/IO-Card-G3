cmake_minimum_required(VERSION 3.10)

set(SOURCES main.cpp
        App.cpp
        AnalogCycler.h
        AnalogCycler.cpp
        AnalogValue.h
        I2CSetOutputCmd.h
        I2CTask.h
        I2CTask.cpp
        I2CSetOutputCmd.h)

if (${ESP_PLATFORM})
    set(COMPONENT_SRCS ${SOURCES})
    set(COMPONENT_REQUIRES smooth)
    register_component()
else ()
    project(g3)
    include_directories($ENV{IDF_PATH}/components/driver/include)
    add_executable(g3 ${SOURCES})
    target_link_libraries(g3 smooth)
endif ()

