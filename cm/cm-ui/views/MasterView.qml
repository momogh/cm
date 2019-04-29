import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 1090
    height: 768
    title: qsTr("Client Management")

    StackView {
        id: contentFrame
        anchors.fill: parent
        initialItem: "qrc:/views/SplashView.qml"
    }


}
