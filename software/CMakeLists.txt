cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 17)
set(project_specific_sdkconfig ${CMAKE_CURRENT_LIST_DIR}/sdkconfig)

add_subdirectory(externals/smooth/lib/smooth)
add_subdirectory(main)
