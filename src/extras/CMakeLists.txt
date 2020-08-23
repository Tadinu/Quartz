set(MODULE_NAME "Qt3DRaytraceExtras")
set(MODULE_LIBNAME "Qt53DRaytraceExtras")
set(MODULE_API ${QUARTZ_PUBLIC_API}/${MODULE_NAME})

set(PROJECT_BINARY_DIR "${CMAKE_INSTALL_PREFIX}/bin")
set(MODULE_BINARY_DIR ${PROJECT_BINARY_DIR})

set(MODULE_PATH ${MODULE_PATH} ${MODULE_BINARY_DIR} PARENT_SCOPE)

find_package(Qt5 COMPONENTS Core Gui 3DCore 3DQuick 3DInput 3DLogic REQUIRED)

set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
# Add the automatically determined parts of the RPATH
# which point to directories outside the build tree to the install RPATH.
# Remembter to set the RPATH before defining the targets in your CMake-File.
# So this instruction have to be before add_executable() or add_library() is called, otherwise it has no effect.
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

set(SOURCES_PRIVATE
    qt3draytraceextras_global_p.h
    qt3dwindow.cpp
    qt3dwindow_p.h
    qt3dquickwindow.cpp
    qt3dquickwindow_p.h
    qfirstpersoncameracontroller.cpp
    qfirstpersoncameracontroller_p.h
)

set(SOURCES_PUBLIC
    ${MODULE_API}/qt3draytraceextras_global.h
    ${MODULE_API}/qt3dwindow.h
    ${MODULE_API}/qt3dquickwindow.h
    ${MODULE_API}/qfirstpersoncameracontroller.h
)

add_library(${MODULE_NAME} ${SOURCES_PRIVATE} ${SOURCES_PUBLIC})
set_target_properties(${MODULE_NAME} PROPERTIES OUTPUT_NAME ${MODULE_LIBNAME})

target_include_directories(${MODULE_NAME} PUBLIC ${QUARTZ_PUBLIC_API})
target_compile_features(${MODULE_NAME} PUBLIC cxx_std_14)
target_compile_definitions(${MODULE_NAME} PRIVATE VK_NO_PROTOTYPES)
target_link_libraries(${MODULE_NAME} Qt5::Core Qt5::Gui Qt5::3DCore Qt5::3DQuick Qt5::3DInput Qt5::3DLogic Qt3DRaytrace)

if(BUILD_SHARED_LIBS)
    target_compile_definitions(${MODULE_NAME}
        PUBLIC QUARTZ_SHARED
        PRIVATE QT3DRAYTRACEEXTRAS_LIBRARY
    )
endif()

install(TARGETS ${MODULE_NAME} DESTINATION "lib")
