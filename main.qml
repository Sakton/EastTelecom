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
    //    width: Script.dp(Screen.width, dpi)
    //    height: Script.dp(Screen.height, dpi)
    width: {
        console.log(Screen.width)
        Screen.width
    }

    height: {
        console.log(Screen.height)
        Screen.height
    }
    title: qsTr("EAST TELECOM")

    Units {
        id: u
    }



    ImgTarif {
        id: d
        x: (parent.width - d.width1) / 2
        y: (parent.height - d.height1) / 2
        width1: parent.width
        //        idSource: 90
        //        width: parent.width
        //        height: {
        //            parent.height
        //        }
    }
}
