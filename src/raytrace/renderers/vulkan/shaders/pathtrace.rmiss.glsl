#version 460
/*
 * Copyright (C) 2018-2019 Michał Siejak
 * This file is part of Quartz - a raytracing aspect for Qt3D.
 * See LICENSE file for licensing information.
 */

#extension GL_NV_ray_tracing : require
#extension GL_EXT_nonuniform_qualifier : require
#extension GL_GOOGLE_include_directive : require

#include "lib/common.glsl"
#include "lib/resources.glsl"

rayPayloadInNV PathTracePayload payload;

void main()
{
    payload.L = step(payload.depth, 0) * fetchSkyRadiance(skyuv(gl_WorldRayDirectionNV));
}
