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
    property int screenHeight: Screen.height
    property int dpi: Screen.pixelDensity * 24
    color: "#403f3f"
    visible: true
    width: {
        //        console.debug("Screen.width ==> " + Screen.width)
        //        console.debug("dpi ==> " + Screen.pixelDensity)
        //        console.debug("Finction dp(320, dpi) ==> " + Script.dp(320, dpi))
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

    //    StartPage {
    //        anchors.fill: parent
    //    }

    //    EastTabView {
    //        anchors.fill: parent
    //    }

    //    EastDrawerBox {
    //    }

    //    EastButtonMenu {
    //        width: parent.width
    //    }

    //    EastSwipeView {
    //        anchors.fill: parent
    //    }

    //    EastTarifElementPage {
    //        anchors.fill: parent
    //    }

    //    EastPopupWindowInfo {
    //        typeInfoWindow: 1
    //        width: parent.width * 0.8
    //        height: parent.height * 0.8
    //        anchors.centerIn: parent
    //    }

    //    EastSupportComponentWindow {
    //        anchors.fill: parent
    //    }

    //TODO тут!!!
    EastCallbackComponentWindow {
        anchors.fill: parent
    }
}
