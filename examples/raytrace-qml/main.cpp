/*
 * Copyright (C) 2018-2019 Michał Siejak
 * This file is part of Quartz - a raytracing aspect for Qt3D.
 * See LICENSE file for licensing information.
 */

#include <QGuiApplication>
#include <QVulkanInstance>
#include <Qt3DRaytraceExtras/qt3dquickwindow.h>
#include <QQmlEngine>

int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);

    QVulkanInstance vulkanInstance;
    vulkanInstance.setApiVersion(QVersionNumber(1, 1));
    if(!vulkanInstance.create()) {
        qFatal("Failed to create Vulkan instance: %x", vulkanInstance.errorCode());
    }

    //QQmlEngine::Get()->addImportPath("/home/ascent/NATIVE/nativefarm/ThirdParty/Graphics/Quartz/src/qml");
    QQmlEngine engine;
    engine.addImportPath("/home/ascent/NATIVE/nativefarm/ThirdParty/Graphics/Quartz/release/bin/qml");
    //engine.addPluginPath("/home/ascent/NATIVE/nativefarm/ThirdParty/Graphics/Quartz/release/bin/qml");

    Qt3DRaytraceExtras::Quick::Qt3DQuickWindow window;
    window.setVulkanInstance(&vulkanInstance);
    window.setSource(QUrl("qrc:/main.qml"));
    window.setWidth(1024);
    window.setHeight(1024);
    window.show();

    return app.exec();
}
