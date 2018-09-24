import QtQuick 2.0
import QtQuick.Controls 2.4
import "../Elements"

Popup {
    id: pup
    property int typeWindow: 0

    visible: false
    implicitWidth: 300
    implicitHeight: 560
    width: implicitWidth
    height: implicitHeight
    contentWidth: width
    contentHeight: height
    dim: true
    opacity: 0.9
    padding: 0


    //    onTypeWindowChanged: {
    //        eastPup.typeInfoWindow = typeWindow
    //    }
    background: Rectangle {
        color: "black"
    }

    contentItem: EastPopupWindowInfo {
        id: eastPup
        width: pup.width
        height: pup.height
        typeInfoWindow: typeWindow
    }

    onClosed: {
        console.debug("destroed popup")
    }
}
