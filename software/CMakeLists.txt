cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 14)


set(IDF_BUILD_ARTIFACTS ON)
set(IDF_PROJECT_EXECUTABLE g3)
set(IDF_BUILD_ARTIFACTS_DIR ${CMAKE_CURRENT_LIST_DIR}/build)

add_subdirectory(main)
add_subdirectory(externals/smooth/lib/smooth)
