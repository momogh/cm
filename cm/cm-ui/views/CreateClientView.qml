import QtQuick 2.12
import assets 1.0
import components 1.0

Item {
    Rectangle {
        anchors.fill: parent
        color: Style.colourBackground

        Text {
            id: title
            anchors.centerIn: parent
            text: qsTr("Create Client View")
        }
    }

    CommandBar {
        commandList: masterController.ui_commandController.ui_createClientViewContextCommands
    }
}

