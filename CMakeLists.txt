cmake_minimum_required(VERSION 3.15)

project(installing CXX)

set(ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}/src")
file(GLOB ROOT_SOURCES "${ROOT_DIR}/*.cpp")
file(GLOB ROOT_HEADERS "${ROOT_DIR}/*.hpp")

set(LOGGER_DIR "${ROOT_DIR}/logger")
file(GLOB_RECURSE LOGGER_SOURCES "${LOGGER_DIR}/*.cpp")
file(GLOB_RECURSE LOGGER_HEADERS "${LOGGER_DIR}/*.hpp")

add_library(lib_name SHARED
  ${ROOT_SOURCES}
  ${LOGGER_SOURCES}
)
set_target_properties(lib_name PROPERTIES
  CXX_STANDARD 20
  CXX_STANDARD_REQUIRED ON
)
target_sources(lib_name PUBLIC FILE_SET HEADERS FILES
  ${ROOT_HEADERS} ${LOGGER_HEADERS}
)
target_include_directories(lib_name PUBLIC ${ROOT_DIR})

set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_SOURCE_DIR}/lib-name")
install(TARGETS lib_name DESTINATION "lib")
install(PROGRAMS ${ROOT_HEADERS} DESTINATION "include/lib_name")
install(PROGRAMS ${LOGGER_HEADERS} DESTINATION "include/lib_name/logger")
