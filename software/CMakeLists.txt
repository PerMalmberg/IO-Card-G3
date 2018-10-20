cmake_minimum_required(VERSION 3.10)

include(externals/smooth/idf_utils.cmake)

set(CMAKE_CXX_STANDARD 14)

if (${IDF_PLATFORM})
    include($ENV{IDF_PATH}/tools/cmake/project.cmake)
    set(EXTRA_COMPONENT_DIRS externals/Smooth)
    project(g3)
else ()
    project(g3)
    include_directories(externals/smooth/include)
    add_subdirectory(main)
    add_subdirectory(externals/smooth)
    add_executable(g3 empty.cpp)
    target_link_libraries(g3 main smooth pthread)
    #set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address -fsanitize=bounds -fsanitize=leak -fsanitize=return -fsanitize=null")
endif ()





