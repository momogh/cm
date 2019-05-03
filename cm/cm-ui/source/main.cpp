#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include <controllers/master-controller.h>
#include <controllers/command_controller.h>


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    // Registriamo la classe "MasterController", definita dentro il progetto "cm-lib" sotto i namespaces "cm" e "controllers", all'interno di un nuovo modulo
    // chiamato "CM", di versione "1" e sottoversione "0". Faremo riferimento a questa classe con il nome di "MasterController"
    qmlRegisterType<cm::controllers::MasterController>("CM", 1, 0, "MasterController");

    // Registriamo la classe "NavigationController", definita dentro il progetto "cm-lib" sotto i namespaces "cm" e "controllers", all'interno di un nuovo modulo
    // chiamato "CM", di versione "1" e sottoversione "0". Faremo riferimento a questa classe con il nome di "NavigationController"
    qmlRegisterType<cm::controllers::NavigationController>("CM", 1, 0, "NavigationController");

    qmlRegisterType<cm::controllers::CommandController>("CM", 1, 0, "CommandController");
    qmlRegisterType<cm::framework::Command>("CM", 1, 0, "Command");

    cm::controllers::MasterController masterController;

    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:/");

    engine.rootContext()->setContextProperty("masterController", &masterController);
    engine.load(QUrl(QStringLiteral("qrc:/views/MasterView.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
