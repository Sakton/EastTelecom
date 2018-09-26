import QtQuick.Controls 1.4
import QtQuick 2.9
import QtQuick.Window 2.2
import "Elements"
import "Components"
import "Pages"
import "Script.js" as Script

ApplicationWindow {
    id: mainWindow
    property int screenHeight: Screen.height
    property int dpi: Screen.pixelDensity * 24
    color: "#403f3f"
    visible: true
    width: {
        if (Screen.width > 1000)
            return 320
        Screen.width
    }

    height: {
        if (Screen.height > 1000)
            return 533
        Screen.height
    }

    minimumWidth: {
        Script.dp(320, dpi)
    }

    minimumHeight: {
        Script.dp(533, dpi)
    }

    title: qsTr("EAST TELECOM")

    Units {
        id: u
    }

    Loader {
        id: mainLoad
        anchors.fill: parent

        Component.onCompleted: {
            setSource("qrc:/Pages/StartPage.qml")
        }
    }

    Connections {
        ignoreUnknownSignals: true
        target: mainLoad.item
        enabled: (mainLoad.source == "qrc:/Pages/StartPage.qml") ? true : false

        onSignalConfirmLoginAndPass: {
            mainLoad.setSource("qrc:/Pages/EastTemplatePages.qml")
        }

        onSignalClickButtonGuest: {
            mainLoad.setSource("qrc:/Pages/EastRecoverPasswordPage.qml")
        }
    }

    Connections {
        ignoreUnknownSignals: true
        target: mainLoad.item
        enabled: (mainLoad.source == "qrc:/Pages/EastRecoverPasswordPage.qml")
        onSignalSendRecowerPassword: {
            mainLoad.setSource("qrc:/Pages/StartPage.qml")
        }
    }
}
