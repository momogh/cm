#ifndef DATADECORATOR_H
#define DATADECORATOR_H

#include <QJsonObject>
#include <QJsonValue>
#include <QObject>
#include <QScopedPointer>

#include <cm-lib_global.h>

namespace cm {
namespace data {

class Entity;   // Forward Declaration della classe Entity (si specifica che esiste da qualche parte una classe chiamata "Entity" che viene usata,
                // in questo caso nel costruttore di "DataDecorator", anche se non è definita in questo file.

class CMLIBSHARED_EXPORT DataDecorator : public QObject
{
    Q_OBJECT
    Q_PROPERTY (QString ui_label READ label CONSTANT)

public:
    DataDecorator(Entity* parent = nullptr, const QString& key = "SomeItemKey", const QString& label = "");
    virtual ~DataDecorator();   // Il distruttore è virtuale perchè questa è una classe virtuale pura (non verranno istanziati oggetti di questa classe,
                                // che servirà da padre per altre classi che deriveranno da essa.

    const QString& key() const;
    const QString& label() const;

    Entity* parentEntity();

    virtual QJsonValue jsonValue() const = 0;                   // Funzione Virtuale Pura (riconoscibile dall' "= 0" alla fine. Obbliga le classi figlie ad
                                                                // implementare questa funzione.
    virtual void update(const QJsonObject& jsonObject) = 0;     // Funzione Virtuale Pura (riconoscibile dall' "= 0" alla fine. Obbliga le classi figlie ad
                                                                // implementare questa funzione.

private:
    class Implementation;
    QScopedPointer<Implementation> implementation;
};


}
}

#endif // DATADECORATOR_H
