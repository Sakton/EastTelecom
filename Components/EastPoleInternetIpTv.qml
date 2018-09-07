import QtQuick 2.0
import "../Elements"

Rectangle {
    property string txt: "INTERNET"
    width: parent.width
    height: parent.height / 10
    color: "red"
    z: 1
    EastTextElement {
        anchors.centerIn: parent
        text: parent.txt
        font.pixelSize: parent.height / 2
    }
}
