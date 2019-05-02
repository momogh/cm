import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import assets 1.0

Item {

    // "Proprerties" da esporre e "Signals" da gestire
    property alias iconCharacter: textIcon.text
    property alias description: textDescription.text
    property color hoverColour: Style.colourNavigationBarBackground

    signal navigationButtonClicked()


    //width: Style.widthNavigationButton
    width: parent.width
    height: Style.heightNavigationButton

    Rectangle {
        id: background
        anchors.fill: parent
        color: Style.colourNavigationBarBackground

        // states: vettore di possibili "stati" dell'elemento "target" indicato all'interno dell'oggetto "State".
        // Se presenti stati multipli, occorre separarli con una virgola.
        states: [

            State {
                name: "hover"
                PropertyChanges {
                    target: background
                    color: hoverColour
                }
            }

        ]


        Row {
            Text {
                id: textIcon
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                width: Style.widthNavigationButtonIcon
                height: Style.heightNavigationButtonIcon
                font {
                    family: Style.fontAwesome
                    pixelSize: Style.pixelSizeNavigationBarIcon
                }
                color: Style.colourNavigationBarFont
                text: "\uf11a"      // icona di default (faccina senza parole)
            }
            Text {
                id: textDescription
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                width: Style.widthNavigationButtonDescription
                height: Style.heightNavigationButtonDescription
                color: Style.colourNavigationBarFont
                font.pixelSize: Style.pixelSizeNavigationBarText
                text: "SET ME!!!"   // descrizione di default (IMPOSTAMI!!)
            }
        }

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: background.state = "hover"
            onExited: background.state = ""
            onClicked: navigationButtonClicked()
        }
    }

}

