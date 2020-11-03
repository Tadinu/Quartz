add_subdirectory(raytrace-cpp)
add_subdirectory(raytrace-qml)

set(PROJECT_BINARY_DIR "${CMAKE_INSTALL_PREFIX}/bin")
set(QML_IMPORT_PATH "${PROJECT_BINARY_DIR}/qml")
set(ENV{QML2_IMPORT_PATH} "${PROJECT_BINARY_DIR}/qml")
