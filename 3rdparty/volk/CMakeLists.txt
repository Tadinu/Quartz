cmake_minimum_required(VERSION 3.8)
project(volk)

find_package(Vulkan REQUIRED)
find_package(Qt5 COMPONENTS Core)

add_library(volk STATIC volk.c volk.h)
target_include_directories(volk PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(volk Vulkan::Vulkan)
