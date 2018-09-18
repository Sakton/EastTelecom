import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    width: 320
    height: 580

    TextArea {
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width /* * 0.8*/
        height: parent.height /* * 0.7*/
        font.family: "Helvetica"
        font.pixelSize: width / 16
        focus: true
        inputMethodHints: Qt.ImhPreferLowercase
        wrapMode: Text.Wrap
        style: EastTextAreaStyle {
        }
    }
}
