cmake_minimum_required(VERSION 3.13.0)

# Sources
target_sources(${MODULE_NAME} PRIVATE
    vkcommon.h
    vkresources.h
    device.cpp
    device.h
    commandbuffer.cpp
    commandbuffer.h
    renderer.cpp
    renderer.h
    shadermodule.cpp
    shadermodule.h
    initializers.h
    descriptors.h
    resourcebarrier.h
    geometry.h
    glsl.h
    services/frameadvanceservice.cpp
    services/frameadvanceservice.h
    pipeline/pipeline.cpp
    pipeline/pipeline.h
    pipeline/graphicspipeline.cpp
    pipeline/graphicspipeline.h
    pipeline/computepipeline.cpp
    pipeline/computepipeline.h
    pipeline/raytracingpipeline.cpp
    pipeline/raytracingpipeline.h
    jobs/buildgeometryjob.cpp
    jobs/buildgeometryjob.h
    jobs/buildscenetlasjob.cpp
    jobs/buildscenetlasjob.h
    jobs/updatematerialsjob.cpp
    jobs/updatematerialsjob.h
    jobs/updateemittersjob.cpp
    jobs/updateemittersjob.h
    jobs/updateinstancebufferjob.cpp
    jobs/updateinstancebufferjob.h
    jobs/updaterenderparametersjob.cpp
    jobs/updaterenderparametersjob.h
    jobs/uploadtexturejob.cpp
    jobs/uploadtexturejob.h
    jobs/destroyexpiredresourcesjob.cpp
    jobs/destroyexpiredresourcesjob.h
    managers/commandbuffermanager.cpp
    managers/commandbuffermanager.h
    managers/descriptormanager.cpp
    managers/descriptormanager.h
    managers/scenemanager.cpp
    managers/scenemanager.h
    managers/sceneresourceset.h
    managers/cameramanager.cpp
    managers/cameramanager.h
)

# Shaders
target_sources(${MODULE_NAME} PRIVATE
    shaders/lib/bindings.glsl
    shaders/lib/shared.glsl
    shaders/vulkan_shaders.qrc
)

set(VULKAN_LIBRARIES volk vma spirv_reflect PARENT_SCOPE)
