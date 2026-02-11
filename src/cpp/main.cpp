#include <stdio.h>

#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char **argv) {
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl qurl(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app,
        [qurl](QObject *obj, const QUrl &_qurl) {
            if(!(obj && qurl == _qurl)) {
                QCoreApplication::exit(1);
            }
        }, Qt::QueuedConnection
    );
    engine.load(qurl);

    QObject *window = engine.rootObjects()[0];
    if(!window) {
        QCoreApplication::exit(2);
    }

    return app.exec();
}
