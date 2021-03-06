QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        3rdparty/spirv_reflect/spirv_reflect.c \
        3rdparty/stb/libstb.c \
        3rdparty/vma/vk_mem_alloc.cpp \
        3rdparty/volk/volk.c \
        apps/quartz/imagewriter.cpp \
        apps/quartz/main.cpp \
        apps/quartz/renderwindow.cpp \
        apps/scene2qml/exporter.cpp \
        apps/scene2qml/importer.cpp \
        apps/scene2qml/main.cpp \
        examples/raytrace-cpp/main.cpp \
        examples/raytrace-qml/main.cpp \
        main.cpp \
        src/extras/qfirstpersoncameracontroller.cpp \
        src/extras/qt3dquickwindow.cpp \
        src/extras/qt3dwindow.cpp \
        src/qml/quick3draytrace/qtquick3draytraceplugin.cpp \
        src/qml/quick3draytraceextras/qtquick3draytraceextrasplugin.cpp \
        src/raytrace/backend/abstracttexture.cpp \
        src/raytrace/backend/backendnode.cpp \
        src/raytrace/backend/cameralens.cpp \
        src/raytrace/backend/distantlight.cpp \
        src/raytrace/backend/entity.cpp \
        src/raytrace/backend/geometry.cpp \
        src/raytrace/backend/geometryrenderer.cpp \
        src/raytrace/backend/material.cpp \
        src/raytrace/backend/rendersettings.cpp \
        src/raytrace/backend/textureimage.cpp \
        src/raytrace/backend/transform.cpp \
        src/raytrace/frontend/qabstracttexture.cpp \
        src/raytrace/frontend/qcamera.cpp \
        src/raytrace/frontend/qcameralens.cpp \
        src/raytrace/frontend/qdistantlight.cpp \
        src/raytrace/frontend/qgeometry.cpp \
        src/raytrace/frontend/qgeometryrenderer.cpp \
        src/raytrace/frontend/qmaterial.cpp \
        src/raytrace/frontend/qmesh.cpp \
        src/raytrace/frontend/qrendersettings.cpp \
        src/raytrace/frontend/qtexture.cpp \
        src/raytrace/frontend/qtextureimage.cpp \
        src/raytrace/io/defaultimageimporter.cpp \
        src/raytrace/io/defaultmeshimporter.cpp \
        src/raytrace/jobs/loadgeometryjob.cpp \
        src/raytrace/jobs/loadtexturejob.cpp \
        src/raytrace/jobs/updateworldtransformjob.cpp \
        src/raytrace/qraytraceaspect.cpp \
        src/raytrace/qt3draytracecontext.cpp \
        src/raytrace/renderers/vulkan/commandbuffer.cpp \
        src/raytrace/renderers/vulkan/device.cpp \
        src/raytrace/renderers/vulkan/jobs/buildgeometryjob.cpp \
        src/raytrace/renderers/vulkan/jobs/buildscenetlasjob.cpp \
        src/raytrace/renderers/vulkan/jobs/destroyexpiredresourcesjob.cpp \
        src/raytrace/renderers/vulkan/jobs/updateemittersjob.cpp \
        src/raytrace/renderers/vulkan/jobs/updateinstancebufferjob.cpp \
        src/raytrace/renderers/vulkan/jobs/updatematerialsjob.cpp \
        src/raytrace/renderers/vulkan/jobs/updaterenderparametersjob.cpp \
        src/raytrace/renderers/vulkan/jobs/uploadtexturejob.cpp \
        src/raytrace/renderers/vulkan/managers/cameramanager.cpp \
        src/raytrace/renderers/vulkan/managers/commandbuffermanager.cpp \
        src/raytrace/renderers/vulkan/managers/descriptormanager.cpp \
        src/raytrace/renderers/vulkan/managers/scenemanager.cpp \
        src/raytrace/renderers/vulkan/pipeline/computepipeline.cpp \
        src/raytrace/renderers/vulkan/pipeline/graphicspipeline.cpp \
        src/raytrace/renderers/vulkan/pipeline/pipeline.cpp \
        src/raytrace/renderers/vulkan/pipeline/raytracingpipeline.cpp \
        src/raytrace/renderers/vulkan/renderer.cpp \
        src/raytrace/renderers/vulkan/services/frameadvanceservice.cpp \
        src/raytrace/renderers/vulkan/shadermodule.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    3rdparty/CMakeLists.txt \
    3rdparty/spirv_reflect/CMakeLists.txt \
    3rdparty/spirv_reflect/README.md \
    3rdparty/stb/CMakeLists.txt \
    3rdparty/vma/CMakeLists.txt \
    3rdparty/vma/LICENSE.txt \
    3rdparty/vma/README.md \
    3rdparty/volk/CMakeLists.txt \
    3rdparty/volk/README.md \
    CMakeLists.txt \
    LICENSE \
    README.md \
    apps/CMakeLists.txt \
    apps/quartz/CMakeLists.txt \
    apps/quartz/resources/appicon_win32.ico \
    apps/quartz/resources/quartz.rc \
    apps/scene2qml/CMakeLists.txt \
    cmake/Findassimp.cmake \
    examples/CMakeLists.txt \
    examples/raytrace-cpp/CMakeLists.txt \
    examples/raytrace-qml/CMakeLists.txt \
    examples/raytrace-qml/main.qml \
    src/CMakeLists.txt \
    src/extras/CMakeLists.txt \
    src/qml/CMakeLists.txt \
    src/qml/quick3draytrace/CMakeLists.txt \
    src/qml/quick3draytrace/qmldir \
    src/qml/quick3draytraceextras/CMakeLists.txt \
    src/qml/quick3draytraceextras/qmldir \
    src/raytrace/CMakeLists.txt \
    src/raytrace/renderers/CMakeLists.txt \
    src/raytrace/renderers/vulkan/CMakeLists.txt \
    src/raytrace/renderers/vulkan/shaders/compile.py \
    src/raytrace/renderers/vulkan/shaders/display.frag.glsl \
    src/raytrace/renderers/vulkan/shaders/display.vert.glsl \
    src/raytrace/renderers/vulkan/shaders/lib/bindings.glsl \
    src/raytrace/renderers/vulkan/shaders/lib/bsdf.glsl \
    src/raytrace/renderers/vulkan/shaders/lib/common.glsl \
    src/raytrace/renderers/vulkan/shaders/lib/geometry.glsl \
    src/raytrace/renderers/vulkan/shaders/lib/resources.glsl \
    src/raytrace/renderers/vulkan/shaders/lib/sampling.glsl \
    src/raytrace/renderers/vulkan/shaders/lib/shared.glsl \
    src/raytrace/renderers/vulkan/shaders/lib/xoroshiro64s.glsl \
    src/raytrace/renderers/vulkan/shaders/pathtrace.rchit.glsl \
    src/raytrace/renderers/vulkan/shaders/pathtrace.rgen.glsl \
    src/raytrace/renderers/vulkan/shaders/pathtrace.rmiss.glsl \
    src/raytrace/renderers/vulkan/shaders/queryemission.rchit.glsl \
    src/raytrace/renderers/vulkan/shaders/queryemission.rmiss.glsl \
    src/raytrace/renderers/vulkan/shaders/queryvisibility.rchit.glsl \
    src/raytrace/renderers/vulkan/shaders/queryvisibility.rmiss.glsl \
    src/raytrace/renderers/vulkan/shaders/spv/display.frag.spv \
    src/raytrace/renderers/vulkan/shaders/spv/display.vert.spv \
    src/raytrace/renderers/vulkan/shaders/spv/pathtrace.rchit.spv \
    src/raytrace/renderers/vulkan/shaders/spv/pathtrace.rgen.spv \
    src/raytrace/renderers/vulkan/shaders/spv/pathtrace.rmiss.spv \
    src/raytrace/renderers/vulkan/shaders/spv/queryemission.rchit.spv \
    src/raytrace/renderers/vulkan/shaders/spv/queryemission.rmiss.spv \
    src/raytrace/renderers/vulkan/shaders/spv/queryvisibility.rchit.spv \
    src/raytrace/renderers/vulkan/shaders/spv/queryvisibility.rmiss.spv

RESOURCES += \
    examples/raytrace-cpp/raytrace-cpp.qrc \
    examples/raytrace-qml/raytrace-qml.qrc \
    src/raytrace/renderers/vulkan/shaders/vulkan_shaders.qrc

HEADERS += \
    3rdparty/spirv_reflect/include/spirv/unified1/spirv.h \
    3rdparty/spirv_reflect/spirv_reflect.h \
    3rdparty/stb/stb_image.h \
    3rdparty/stb/stb_image_write.h \
    3rdparty/vma/vk_mem_alloc.h \
    3rdparty/volk/volk.h \
    apps/quartz/imagewriter.h \
    apps/quartz/renderwindow.h \
    apps/quartz/version.h \
    apps/scene2qml/exporter.h \
    apps/scene2qml/importer.h \
    apps/scene2qml/scene.h \
    include/Qt3DRaytrace/qabstracttexture.h \
    include/Qt3DRaytrace/qcamera.h \
    include/Qt3DRaytrace/qcameralens.h \
    include/Qt3DRaytrace/qcolorspace.h \
    include/Qt3DRaytrace/qdistantlight.h \
    include/Qt3DRaytrace/qgeometry.h \
    include/Qt3DRaytrace/qgeometrydata.h \
    include/Qt3DRaytrace/qgeometryfactory.h \
    include/Qt3DRaytrace/qgeometryrenderer.h \
    include/Qt3DRaytrace/qimagedata.h \
    include/Qt3DRaytrace/qmaterial.h \
    include/Qt3DRaytrace/qmesh.h \
    include/Qt3DRaytrace/qraytraceaspect.h \
    include/Qt3DRaytrace/qrenderimage.h \
    include/Qt3DRaytrace/qrendersettings.h \
    include/Qt3DRaytrace/qt3draytrace_global.h \
    include/Qt3DRaytrace/qt3draytracecontext.h \
    include/Qt3DRaytrace/qtexture.h \
    include/Qt3DRaytrace/qtextureimage.h \
    include/Qt3DRaytrace/qtextureimagefactory.h \
    include/Qt3DRaytraceExtras/qfirstpersoncameracontroller.h \
    include/Qt3DRaytraceExtras/qt3dquickwindow.h \
    include/Qt3DRaytraceExtras/qt3draytraceextras_global.h \
    include/Qt3DRaytraceExtras/qt3dwindow.h \
    src/extras/qfirstpersoncameracontroller_p.h \
    src/extras/qt3dquickwindow_p.h \
    src/extras/qt3draytraceextras_global_p.h \
    src/extras/qt3dwindow_p.h \
    src/qml/quick3draytrace/qtquick3draytraceplugin.h \
    src/qml/quick3draytraceextras/qtquick3draytraceextrasplugin.h \
    src/raytrace/backend/abstractrenderer_p.h \
    src/raytrace/backend/abstracttexture_p.h \
    src/raytrace/backend/backendnode_p.h \
    src/raytrace/backend/cameralens_p.h \
    src/raytrace/backend/distantlight_p.h \
    src/raytrace/backend/entity_p.h \
    src/raytrace/backend/geometry_p.h \
    src/raytrace/backend/geometryrenderer_p.h \
    src/raytrace/backend/handles_p.h \
    src/raytrace/backend/managers_p.h \
    src/raytrace/backend/material_p.h \
    src/raytrace/backend/rendersettings_p.h \
    src/raytrace/backend/textureimage_p.h \
    src/raytrace/backend/transform_p.h \
    src/raytrace/backend/types_p.h \
    src/raytrace/frontend/qabstracttexture_p.h \
    src/raytrace/frontend/qcamera_p.h \
    src/raytrace/frontend/qcameralens_p.h \
    src/raytrace/frontend/qdistantlight_p.h \
    src/raytrace/frontend/qgeometry_p.h \
    src/raytrace/frontend/qgeometryrenderer_p.h \
    src/raytrace/frontend/qmaterial_p.h \
    src/raytrace/frontend/qmesh_p.h \
    src/raytrace/frontend/qrendersettings_p.h \
    src/raytrace/frontend/qtexture_p.h \
    src/raytrace/frontend/qtextureimage_p.h \
    src/raytrace/io/common_p.h \
    src/raytrace/io/defaultimageimporter_p.h \
    src/raytrace/io/defaultmeshimporter_p.h \
    src/raytrace/io/imageimporter_p.h \
    src/raytrace/io/meshimporter_p.h \
    src/raytrace/jobs/loadgeometryjob_p.h \
    src/raytrace/jobs/loadtexturejob_p.h \
    src/raytrace/jobs/updateworldtransformjob_p.h \
    src/raytrace/qraytraceaspect_p.h \
    src/raytrace/qt3draytrace_global_p.h \
    src/raytrace/renderers/vulkan/commandbuffer.h \
    src/raytrace/renderers/vulkan/descriptors.h \
    src/raytrace/renderers/vulkan/device.h \
    src/raytrace/renderers/vulkan/geometry.h \
    src/raytrace/renderers/vulkan/glsl.h \
    src/raytrace/renderers/vulkan/initializers.h \
    src/raytrace/renderers/vulkan/jobs/buildgeometryjob.h \
    src/raytrace/renderers/vulkan/jobs/buildscenetlasjob.h \
    src/raytrace/renderers/vulkan/jobs/destroyexpiredresourcesjob.h \
    src/raytrace/renderers/vulkan/jobs/updateemittersjob.h \
    src/raytrace/renderers/vulkan/jobs/updateinstancebufferjob.h \
    src/raytrace/renderers/vulkan/jobs/updatematerialsjob.h \
    src/raytrace/renderers/vulkan/jobs/updaterenderparametersjob.h \
    src/raytrace/renderers/vulkan/jobs/uploadtexturejob.h \
    src/raytrace/renderers/vulkan/managers/cameramanager.h \
    src/raytrace/renderers/vulkan/managers/commandbuffermanager.h \
    src/raytrace/renderers/vulkan/managers/descriptormanager.h \
    src/raytrace/renderers/vulkan/managers/scenemanager.h \
    src/raytrace/renderers/vulkan/managers/sceneresourceset.h \
    src/raytrace/renderers/vulkan/pipeline/computepipeline.h \
    src/raytrace/renderers/vulkan/pipeline/graphicspipeline.h \
    src/raytrace/renderers/vulkan/pipeline/pipeline.h \
    src/raytrace/renderers/vulkan/pipeline/raytracingpipeline.h \
    src/raytrace/renderers/vulkan/renderer.h \
    src/raytrace/renderers/vulkan/resourcebarrier.h \
    src/raytrace/renderers/vulkan/services/frameadvanceservice.h \
    src/raytrace/renderers/vulkan/shadermodule.h \
    src/raytrace/renderers/vulkan/vkcommon.h \
    src/raytrace/renderers/vulkan/vkresources.h \
    src/raytrace/utility/movingaverage.h
