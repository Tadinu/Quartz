cmake_minimum_required(VERSION 3.8)

set(APP_NAME "scene2qml")

find_package(Qt5 COMPONENTS Core REQUIRED)
find_package(ASSIMP REQUIRED)
set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
# Add the automatically determined parts of the RPATH
# which point to directories outside the build tree to the install RPATH.
# Remembter to set the RPATH before defining the targets in your CMake-File.
# So this instruction have to be before add_executable() or add_library() is called, otherwise it has no effect.
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

#link_directories(${ASSIMP_LIBRARY_DIRS})
add_executable(${APP_NAME}
    main.cpp
    importer.cpp
    importer.h
    exporter.cpp
    exporter.h
    scene.h
)

target_include_directories(${APP_NAME}
    PRIVATE ${QUARTZ_3RDPARTY}
    PRIVATE ${ASSIMP_INCLUDE_DIRS}
)

target_compile_features(${APP_NAME} PRIVATE cxx_std_14)
target_link_libraries(${APP_NAME} Qt5::Core ${ASSIMP_LIBRARIES} -L${ASSIMP_LIBRARY_DIRS})

install(TARGETS ${APP_NAME} DESTINATION "bin")
