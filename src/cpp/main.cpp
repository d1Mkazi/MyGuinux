#include <stdio.h>

#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char **argv) {
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed, &app,
        []() {
            QCoreApplication::exit(1);
        }, Qt::QueuedConnection
    );
    engine.loadFromModule("gui", "Main");

    QObject *window = engine.rootObjects()[0];
    if(!window) {
        QCoreApplication::exit(2);
    }

    return app.exec();
}
