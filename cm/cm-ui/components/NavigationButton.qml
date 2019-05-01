import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import assets 1.0

Row {

    property alias iconCharacter: textIcon.text
    property alias description: textDescription.text

    Text {
        id: textIcon
        font {
            family: Style.fontAwesome
            pixelSize: 42
        }
        color: "#ffffff"
        text: "\uf11a"      // icona di default (faccina senza parole)
    }
    Text {
        id: textDescription
        color: "#ffffff"
        text: "SET ME!!!"   // descrizione di default (IMPOSTAMI!!)
    }
}
