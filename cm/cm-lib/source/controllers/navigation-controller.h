#ifndef NAVIGATIONCONTROLLER_H
#define NAVIGATIONCONTROLLER_H

#include <QObject>
#include <cm-lib_global.h>
#include <models/client.h>

namespace cm {
namespace controllers {

// la macro CLIMBSHARED_EXPORT serve ad utilizzare la classe al di fuori di questo progetto (compilato come libreria .dll)
class CMLIBSHARED_EXPORT NavigationController : public QObject
{
    Q_OBJECT
public:
    explicit NavigationController(QObject* _parent = nullptr) :
        QObject(_parent)
    {}

signals:
    void goCreateClientView();
    void goDashboardView();
    void goEditClientView(cm::models::Client* client);
    void goFindClientView();
};

}   // controllers
}   // cm

#endif // NAVIGATIONCONTROLLER_H
