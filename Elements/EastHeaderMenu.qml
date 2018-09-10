import QtQuick 2.0

Rectangle {
    id: r
    width: lw.width
    height: 64
    Text {
        anchors.centerIn: parent
        font.pixelSize: r.height / 2
        text: "Header"
    }
}
