import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Elements"
import "../Components"
import "../Script.js" as Script

Item {
    id: startPg
    signal signalConfirmLoginAndPass
    signal signalClickButtonGuest

    implicitWidth: 320
    implicitHeight: 580
    width: implicitWidth
    height: implicitHeight

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

            onClicked: {
                //TODO тут отправим данные на проверку
                if (true)
                    signalConfirmLoginAndPass()
                else
                    pupStatus.open()
            }
        }
    }

    EastPopupStatusWindow {
        id: pupStatus
        width: parent.width * .7
        height: parent.height * .5
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
    }

    ButtonGuest {
        y: parent.height - height
        width: startPg.width
        height: startPg.height / 12

        onClicked: {
            signalClickButtonGuest()
        }
    }
}
