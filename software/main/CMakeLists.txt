cmake_minimum_required(VERSION 3.10)

set(SOURCES "main.cpp")

if (${ESP_PLATFORM})
    set(COMPONENT_SRCS ${SOURCES})
    set(COMPONENT_ADD_INCLUDEDIRS ${COMPONENT_PATH}/../externals/smooth/include)
    register_component()
else ()
    # this branch is not actually used since this isn't the top-level project.
    project(main)
    add_library(main ${SOURCES})
endif ()

