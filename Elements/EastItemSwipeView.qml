import QtQuick 2.0

Item {
    id: itm
    property color clr: "red"
    Rectangle {
        width: parent.width
        height: parent.height
        color: itm.clr
    }
}
