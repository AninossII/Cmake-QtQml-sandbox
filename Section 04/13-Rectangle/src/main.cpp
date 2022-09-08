#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    const QUrl url(u"qrc:/rec/ui/main.qml"_qs);
    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreated, &app, [url](QObject *obj, const QUrl &objUrl)
        {
        if(!obj && url == objUrl)
            QGuiApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.load(url);
    return app.exec();
}