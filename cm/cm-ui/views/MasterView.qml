import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import assets 1.0
import components 1.0


Window {
    visible: true
    width: 1090
    height: 768
    title: qsTr("Client Management")

    // Connessioni... (da commentare come si deve!)
    Connections {
        target: masterController.ui_navigationController

        onGoCreateClientView:   contentFrame.replace("qrc:/views/CreateClientView.qml")
        onGoDashboardView:      contentFrame.replace("qrc:/views/DashboardView.qml")
        onGoEditClientView:     contentFrame.replace("qrc:/views/EditClientView.qml", {selectedClient:client})
        onGoFindClientView:     contentFrame.replace("qrc:/views/FindClientView.qml")
    }

    // Navigation Bar (messa di lato a sinistra).
    Rectangle {
        id: navigationBar
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }
        width: 100
        color: "#000000"

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
            NavigationButton {
                iconCharacter: "\uf152"
                description: ""
            }

            NavigationButton {
                iconCharacter: "\uf015"
                description: "Dashboard"
            }

            NavigationButton {
                iconCharacter: "\uf234"
                description: "New Client..."
            }

            NavigationButton {
                iconCharacter: "\uf002"
                description: "Find Client..."
            }



        }
    }

    // Area centrale dell'applicazione che carica pagine differenti.
    StackView {
        id: contentFrame
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            left: navigationBar.right
        }
        clip: true  // Questa proprietà consente di non sovrapporre il refresh della StackView al di fuori della propria area di visualizzazione in caso
                    // di transizioni/animazioni. Se non fosse messo a true, il cambio pagina andrebbe a sovrapporsi alla navigation bar a fianco,
                    // facendola sparire per il tempo del refresh/transizione.

        initialItem: "qrc:/views/SplashView.qml"
    }



    // Metodo chiamato quando la MasterView ha finito il caricamento e/o il completamento delle operazioni all'avvio
    // (dico che il componente "contentFrame", cioè lo StackView, deve rimpiazzare la schermata attuale con la nuova "DashboardView".
    // Nota: il metodo "replace" sostituisce la pagina corrente nello StackView e ne cancella la storia, quindi non è possibile
    // implementare i pulsanti "back" e "forward" per navigare nelle pagine precedenti/successive come si farebbe normalmente
    // su un browser (cosa che invece lo StackView consentirebbe!!)
    Component.onCompleted:  contentFrame.replace("qrc:/views/DashboardView.qml");


}
