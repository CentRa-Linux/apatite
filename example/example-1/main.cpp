#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSurfaceFormat>

int main(int argc, char *argv[]) {
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
  QGuiApplication app(argc, argv);

  app.setOrganizationName("centra");
  app.setOrganizationDomain("centra");
  app.setApplicationName("example-1");
  QSurfaceFormat fmt;
  fmt.setSamples(4);
  QSurfaceFormat::setDefaultFormat(fmt);

  QQmlApplicationEngine engine;
  // Path to module.
  engine.addImportPath("qrc:/");

  const QUrl url(QStringLiteral("qrc:/main.qml"));
  QObject::connect(
      &engine, &QQmlApplicationEngine::objectCreated, &app,
      [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
          QCoreApplication::exit(-1);
      },
      Qt::QueuedConnection);
  engine.load(url);

  return app.exec();
}
