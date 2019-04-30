import QtQuick 2.12

Item {
    Rectangle {
        anchors.fill: parent
        color: "#f4c842"

        Text {
            id: title
            anchors.centerIn: parent
            text: qsTr("Create Client View")
        }
    }
}

