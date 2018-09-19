import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Elements"
import "../Components"
import "../Script.js" as Script

Item {
    id: startPg
    width: 480
    height: 700

    Column {
        spacing: parent.width / 7
        anchors.centerIn: parent
        property real myWidth: startPg.width * 3 / 4

        LogoImg {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.myWidth * 0.75
            height: startPg.height / 8
        }

        LoginPassBlock {
            width: parent.myWidth
            height: startPg.height / 7
        }

        EastStartPageButton {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.myWidth * 0.75
            height: startPg.height / 9
        }
    }

    ButtonGuest {
        y: parent.height - height
        width: startPg.width
        height: startPg.height / 12
    }
}
