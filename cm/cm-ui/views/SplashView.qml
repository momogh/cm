import QtQuick 2.12
import assets 1.0

Item {
    Rectangle {
        anchors.fill: parent
        //color: "#f4c842"
        color: Style.colourBackground

        Text {
            id: title
            anchors.centerIn: parent
            text: qsTr("Splash View")
        }
    }
}
