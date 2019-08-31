cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 17)

if(${ESP_PLATFORM})
    include($ENV{IDF_PATH}/tools/cmake/project.cmake)

    # Include Smooth as a component
    set(EXTRA_COMPONENT_DIRS
             externals/smooth/smooth_component)
    project(g3)
else()
    add_subdirectory(main)
    add_subdirectory(externals/smooth/lib)
    add_subdirectory(externals/smooth/mock-idf)
endif()
