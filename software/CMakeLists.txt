cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 14)


set(IDF_BUILD_ARTIFACTS ON)
set(IDF_PROJECT_EXECUTABLE g3)
set(IDF_BUILD_ARTIFACTS_DIR ${CMAKE_CURRENT_LIST_DIR}/build)

add_definitions(-D_GLIBCXX_USE_C99) # for std::to_string (until using xtensa-gcc 8)
add_subdirectory(main)
add_subdirectory(externals/smooth/lib/smooth)





