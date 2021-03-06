/*
 * Copyright (C) 2018-2019 Michał Siejak
 * This file is part of Quartz - a raytracing aspect for Qt3D.
 * See LICENSE file for licensing information.
 */

#pragma once

#include <Qt3DRaytrace/qrendersettings.h>
#include <Qt3DCore/QNodeId>
#include <Qt3DCore/private/qcomponent_p.h>

namespace Qt3DRaytrace {

struct QRenderSettingsData
{
    Qt3DCore::QNodeId cameraId;

    int primarySamples = 1;
    int secondarySamples = 1;
    int minDepth = 1;
    int maxDepth = 3;

    float directRadianceClamp = 0.0f;
    float indirectRadianceClamp = 0.0f;

    QColor skyColor = Qt::GlobalColor::black;
    float skyIntensity = 1.0f;
    Qt3DCore::QNodeId skyTextureId;
    QVector2D skyTextureOffset;
};

class QRenderSettingsPrivate : public Qt3DCore::QComponentPrivate
{
public:
    Q_DECLARE_PUBLIC(QRenderSettings)
    QRenderSettingsData m_settings;
    QCamera *m_camera = nullptr;
    QAbstractTexture *m_skyTexture = nullptr;
};

} // Qt3DRaytrace
