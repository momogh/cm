#ifndef MASTERCONTROLLER_H
#define MASTERCONTROLLER_H

#include <QObject>
#include <QScopedPointer> // da manuale è inserito, ma se lo tolgo non sembra dare errori..
#include <QString>

#include <cm-lib_global.h>
#include <controllers/navigation-controller.h>
#include <controllers/command_controller.h>


namespace cm {
namespace controllers {

// la macro CLIMBSHARED_EXPORT serve ad utilizzare la classe al di fuori di questo progetto (compilato come libreria .dll)
class CMLIBSHARED_EXPORT MasterController : public QObject
{
    Q_OBJECT
    Q_PROPERTY( QString ui_welcomeMessage READ welcomeMessage CONSTANT )
    Q_PROPERTY( cm::controllers::NavigationController* ui_navigationController READ navigationController CONSTANT )
    Q_PROPERTY( cm::controllers::CommandController* ui_commandController READ commandController CONSTANT )

public:
    explicit MasterController(QObject* parent = nullptr);
    ~MasterController();

    NavigationController* navigationController();
    CommandController* commandController();

    // Sostituita la stringa public con un metodo che restituisce una stringa.
    //QString welcomeMessage = "This is MasterController to Major Tom";
    const QString& welcomeMessage() const;

private:
    class Implementation;
    QScopedPointer<Implementation> implementation;

};

}}
#endif // MASTERCONTROLLER_H
