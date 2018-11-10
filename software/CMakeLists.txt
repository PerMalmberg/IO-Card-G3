cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 14)

if (${ESP_PLATFORM})
    include($ENV{IDF_PATH}/tools/cmake/project.cmake)
    set(EXTRA_COMPONENT_DIRS ${CMAKE_CURRENT_LIST_DIR}/externals/smooth/lib)
    add_definitions(-D_GLIBCXX_USE_C99) # for std::to_string (until using xtensa-gcc 8)
    project(g3)
else ()
    add_subdirectory(externals/smooth/lib/smooth)
    add_subdirectory(main)
endif ()





