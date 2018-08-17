import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick 2.9
import QtQuick.Window 2.2
import "Elements"
import "script.js" as Script

ApplicationWindow {
    id: mainWindow
    property int dpi: Screen.pixelDensity * 24
    //    property int dpiText: textSingleton.font.pixelSize
    color: "#01b7e7"
    visible: true
    width: Script.dp(480, dpi)
    height: Script.dp(640, dpi)
    title: qsTr("EAST TELECOM")

    Units {
        id: u
    }


    //    property int sc: Screen.pixelDensity * 24
    Component.onCompleted: {
        console.debug(dpi)
    }

    ImgWhiteTarif {
        property real k: parent.width / Script.dp(330)
        id: d
        x: 0
        y: 0
        width: parent.width
        height: {
            console.debug(k)
            parent.height
        }
    }
}
