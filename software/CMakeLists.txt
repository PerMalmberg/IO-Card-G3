cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 14)

if (${ESP_PLATFORM})
    include($ENV{IDF_PATH}/tools/cmake/project.cmake)
    set(EXTRA_COMPONENT_DIRS ${CMAKE_CURRENT_LIST_DIR}/externals)
    set(COMPONENT_REQUIRES smooth)
    add_definitions(-D_GLIBCXX_USE_C99) # for std::to_string (until using xtensa-gcc 8)
    project(g3)
else ()
    project(g3)
    #add_subdirectory(main)
    add_subdirectory(externals/smooth)
    add_executable(g3 main/main.cpp)
    target_link_libraries(g3 smooth pthread)
    #set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address -fsanitize=bounds -fsanitize=leak -fsanitize=return -fsanitize=null")
endif ()





