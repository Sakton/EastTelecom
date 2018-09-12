import QtQuick 2.0

Rectangle {
    property int k: 1
    width: 15 * k
    height: 15 * k
    color: "white"
    radius: width / 2

    Rectangle {
        anchors.centerIn: parent
        width: parent.width / 2
        height: parent.height / 2
        radius: width / 2
        color: "red"
    }
}
