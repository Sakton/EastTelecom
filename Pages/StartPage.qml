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
            width: parent.myWidth
        }

        LoginPassBlock {
            width: parent.myWidth
            height: startPg.height / 7
        }

        EastStartPageButton {
            width: parent.myWidth
            height: startPg.width / 3
        }
    }

    ButtonGuest {
        y: {
            console.debug("parent.height ==> " + parent.height)
            console.debug("height ==> " + height)
            parent.height - height
        }
        width: startPg.width
        height: startPg.height / 12
    }
}
