import QtQuick 2.0
import "../Elements"

Rectangle {
    property string txt: "INTERNET"
    implicitWidth: 320
    implicitHeight: 30
    width: implicitWidth
    height: implicitHeight
    color: "#7f7f7f"
    z: 1

    EastTextElement {
        anchors.centerIn: parent
        text: parent.txt
        font.pixelSize: parent.height / 2
    }
}
