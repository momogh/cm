pragma Singleton
import QtQuick 2.12

Item {
    readonly property color colourBackground: "#d9ffb2"
    property alias fontAwesome: fontAwesomeLoader.name

    FontLoader {
        id: fontAwesomeLoader
        source: "qrc:/assets/fontawesome.ttf"
    }

}
