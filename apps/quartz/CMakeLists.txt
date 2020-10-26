cmake_minimum_required(VERSION 3.8)

set(APP_NAME "quartz")
find_package(Qt5 COMPONENTS Core Gui Widgets Qml REQUIRED)

# Reference: https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/RPATH-handling
# Add the automatically determined parts of the RPATH
# which point to directories outside the build tree to the install RPATH.
# Remembter to set the RPATH before defining the targets in your CMake-File.
# So this instruction have to be before add_executable() or add_library() is called, otherwise it has no effect.
set(CMAKE_SKIP_BUILD_RPATH FALSE)
set(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE)
set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

add_executable(${APP_NAME}
    main.cpp
    renderwindow.cpp
    renderwindow.h
    imagewriter.cpp
    imagewriter.h
    version.h
)

if(WIN32)
    target_sources(${APP_NAME} PRIVATE resources/quartz.rc)
endif()

target_compile_features(${APP_NAME} PRIVATE cxx_std_14)
target_include_directories(${APP_NAME} PRIVATE ${QUARTZ_3RDPARTY})
target_link_libraries(${APP_NAME} Qt5::Core Qt5::Gui Qt5::Widgets Qt5::Qml Qt3DRaytrace Qt3DRaytraceExtras stb ${Vulkan_LIBRARY})

install(TARGETS ${APP_NAME} DESTINATION "bin")
