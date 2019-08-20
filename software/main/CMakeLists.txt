cmake_minimum_required(VERSION 3.10)

include(${CMAKE_CURRENT_LIST_DIR}/files.cmake)

if(${ESP_PLATFORM})
    idf_component_register(SRCS ${SOURCES}
            INCLUDE_DIRS
            ${CMAKE_CURRENT_LIST_DIR}
            $ENV{IDF_PATH}/components
            REQUIRES
            smooth_component
            )
else()
    project(g3.elf)
    include(files.cmake)
    add_executable(${PROJECT_NAME} ${SOURCES})
    target_link_libraries(${PROJECT_NAME} smooth)
    target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_LIST_DIR})
endif()