import QtQuick 2.12
import assets 1.0

Item {

    property bool isCollapsed: true

    anchors {
        top: parent.top
        bottom: parent.bottom
        left: parent.left
    }

    width: isCollapsed ? Style.widthNavigationBarCollapsed : Style.widthNavigationBarExpanded

    Rectangle {
        anchors.fill: parent
        color: Style.colourNavigationBarBackground
        Column {
            /*
            Button {
                text: "Dashboard"
                onClicked:
                masterController.ui_navigationController.goDashboardView()
            }
            Button {
                text: "New Client"
                onClicked:
                masterController.ui_navigationController.goCreateClientView()
            }
            Button {
                text: "Find Client"
                onClicked:
                masterController.ui_navigationController.goFindClientView()
            }
            */
            width: parent.width

            NavigationButton {
                iconCharacter: "\uf0c9"
                description: ""
                hoverColour: Style.colourNavigationButtonHovered
                onNavigationButtonClicked: isCollapsed = !isCollapsed
            }
            NavigationButton {
                iconCharacter: "\uf015"
                description: "Dashboard"
                hoverColour: Style.colourNavigationButtonHovered
                onNavigationButtonClicked: masterController.ui_navigationController.goDashboardView()
            }
            NavigationButton {
                iconCharacter: "\uf234"
                description: "New Client"
                hoverColour: Style.colourNavigationButtonHovered
                onNavigationButtonClicked: masterController.ui_navigationController.goCreateClientView()
            }
            NavigationButton {
                iconCharacter: "\uf002"
                description: "Find Client"
                hoverColour: Style.colourNavigationButtonHovered
                onNavigationButtonClicked: masterController.ui_navigationController.goFindClientView()
            }
        }
    }
}
