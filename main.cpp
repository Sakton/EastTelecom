#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>
#include "connector.h"
#include "eastsettings.h"

#include <QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Connector *connector = new Connector; //класс входа в с++ код
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("connector", connector);
    engine.rootContext()->setContextProperty("availableStyles", QQuickStyle::availableStyles());
    engine.load(QUrl("qrc:/main.qml"));
    connector->run();
    //удаляем сипп часть при закрытии приложения
    QObject::connect(&engine, &QQmlApplicationEngine::quit, &app, &QGuiApplication::quit);
    QObject::connect(&app, &QGuiApplication::aboutToQuit,
                     connector, static_cast<void(Connector::*)()>(&Connector::quiterConnector));
    if (engine.rootObjects().isEmpty())
    {
        return -1;
    }
    return app.exec();
}
