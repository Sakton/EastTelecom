import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick 2.9
import QtQuick.Window 2.2
import "Elements"
import "Script.js" as Script

ApplicationWindow {
    id: mainWindow
    property int dpi: Screen.pixelDensity * 24
    color: "#01b7e7"
    visible: true
    width: Script.dp(480, dpi)
    height: Script.dp(640, dpi)
    title: qsTr("EAST TELECOM")

    Units {
        id: u
    }

    //    AnimatedLogoElement {
    //        width: parent.width
    //        height: height1 * (parent.width / width1)
    //    }
    //    ImgFuksiaTarif {
    //        id: d
    //        x: 0
    //        y: 0
    //        width: parent.width
    //        height: {
    //            console.debug(parent.width / d.width)
    //            d.height * (parent.width / d.width)
    //        }
    //    }
    ImgTarif {
        id: d
        x: 0
        y: 0
        idSource: 90
        width: parent.width
        height: {
            parent.height
        }
    }
}
