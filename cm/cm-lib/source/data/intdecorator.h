#ifndef INTDECORATOR_H
#define INTDECORATOR_H

/*
#include <QObject>

class IntDecorator
{
public:
    IntDecorator();
};
*/

#include <QJsonObject>
#include <QJsonValue>
#include <QObject>
#include <QScopedPointer>
#include <QString>

#include <cm-lib_global.h>
#include <data/datadecorator.h>

namespace cm {
namespace data {

class CMLIBSHARED_EXPORT IntDecorator : public DataDecorator
{
    Q_OBJECT
    Q_PROPERTY (int ui_value READ value WRITE setValue NOTIFY valueChanged)

public:
    IntDecorator(Entity* parentEntity = nullptr, const QString& key = "SomeItemKey", const QString& label = "", const int& value = 0);

    //~StringDecorator();
    ~IntDecorator() override;    // Modificata rispetto al manuale.. C'è bisogno di specificare che si tratta di un override di una funzione?
                                    // Se non mettessi l'attributo "override" mi darebbe un warning...

    IntDecorator& setValue(const int& value);
    const int& value() const;

    QJsonValue jsonValue() const override;
    void update(const QJsonObject& jsonObject) override;

signals:
    void valueChanged();

private:
    class Implementation;
    QScopedPointer<Implementation> implementation;

};



}
}



#endif // INTDECORATOR_H
