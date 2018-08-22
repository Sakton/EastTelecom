import QtQuick.Controls 1.4
// import QtQuick.Controls 2.0
import QtQuick 2.9
import QtQuick.Window 2.2
import "Elements"
import "Components"
import "Pages"
import "Script.js" as Script

ApplicationWindow {
    id: mainWindow
    property int dpi: Screen.pixelDensity * 24
    color: "#01b7e7"
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
    title: qsTr("EAST TELECOM")

    Units {
        id: u
    }

    StartPage {
        anchors.fill: parent
    }
}
