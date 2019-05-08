#ifndef DATETIMEDECORATOR_H
#define DATETIMEDECORATOR_H

#include <QJsonObject>
#include <QJsonValue>
#include <QObject>
#include <QScopedPointer>
#include <QString>
#include <QDateTime>

#include <cm-lib_global.h>
#include <data/datadecorator.h>

namespace cm {
namespace data {


class CMLIBSHARED_EXPORT DateTimeDecorator : public DataDecorator
{
    Q_OBJECT
    Q_PROPERTY (QDateTime ui_value READ value WRITE setValue NOTIFY valueChanged)
    Q_PROPERTY( QString ui_iso8601String READ toIso8601String NOTIFY valueChanged )
    Q_PROPERTY( QString ui_prettyDateString READ toPrettyDateString NOTIFY valueChanged )
    Q_PROPERTY( QString ui_prettyTimeString READ toPrettyTimeString NOTIFY valueChanged )
    Q_PROPERTY( QString ui_prettyString READ toPrettyString NOTIFY valueChanged)

public:
    DateTimeDecorator(Entity* parentEntity = nullptr, const QString& key = "SomeItemKey", const QString& label = "", const QDateTime& value = QDateTime());


    //~StringDecorator();
    ~DateTimeDecorator() override;    // Modificata rispetto al manuale.. C'è bisogno di specificare che si tratta di un override di una funzione?
                                    // Se non mettessi l'attributo "override" mi darebbe un warning...

    const QDateTime& value() const;
    DateTimeDecorator& setValue(const QDateTime& value);
    QString toIso8601String() const;
    QString toPrettyDateString() const;
    QString toPrettyTimeString() const;
    QString toPrettyString() const;

    QJsonValue jsonValue() const override;
    void update(const QJsonObject& jsonObject) override;

signals:
    void valueChanged();

private:
    class Implementation;
    QScopedPointer<Implementation> implementation;

};

}}

#endif // DATETIMEDECORATOR_H
