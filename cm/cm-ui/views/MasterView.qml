import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 1090
    height: 768
    title: qsTr("Client Management")

    Text {
        text: masterController.ui_welcomeMessage
    }

}
