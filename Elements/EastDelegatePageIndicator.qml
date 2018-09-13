import QtQuick 2.0

Rectangle {
    property color colorOne: "white"
    property color colorTwo: "red"
    width: 15
    height: 15
    color: colorOne
    radius: width / 2

    Rectangle {
        anchors.centerIn: parent
        width: parent.width / 2
        height: parent.height / 2
        radius: width / 2
        color: colorTwo
    }
}
