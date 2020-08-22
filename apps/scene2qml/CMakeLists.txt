cmake_minimum_required(VERSION 3.8)

set(APP_NAME "scene2qml")

find_package(Qt5 COMPONENTS Core REQUIRED)
find_package(ASSIMP REQUIRED)
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
