import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import "../Elements"
import "../Components"

Rectangle {
    implicitWidth: 320
    implicitHeight: 580
    width: implicitWidth
    height: implicitHeight
    property int indexItem: 0
    property string textTarifName: "ТАРИФ"
    property string textItem: "bla bla bla"

    Image {
        id: backgroundImg
        opacity: 0.8
        anchors.fill: parent
        source: {
            switch (indexItem) {
            case 0:
                return "qrc:/img/img/tarif_white_1.png"
            case 1:
                return "qrc:/img/img/magenta_1.png"
            case 2:
                return "qrc:/img/img/blue_1.png"
            case 3:
                return "qrc:/img/img/golden_1.png"
            default:
                return "qrc:/img/img/golden_1.png"
            }
        }

        EastPopupWindow {
            id: pup
            width: parent.width * .8
            height: parent.height * .8
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            typeWindow: 3

            onSignalAnswerTariffButtonBlockPopupWindow: {
                if (answer)
                    pupInfo.open()
                pup.close()
            }
        }

        EastPopupWindow {
            id: pupInfo
            width: parent.width * .8
            height: parent.height * .8
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            typeWindow: 0
        }

        ColumnLayout {
            anchors.fill: parent
            spacing: 5

            Item {
                Layout.minimumWidth: parent.width
                Layout.minimumHeight: parent.height / 8

                Text {
                    id: t1
                    anchors.centerIn: parent
                    font.pixelSize: parent.height / 2
                    font.family: "Helvetica"
                    color: "black"
                    text: textTarifName
                }
            }

            Item {
                Layout.fillWidth: true
                Layout.fillHeight: true

                Text {
                    anchors.fill: parent
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    font.family: "Helvetica"
                    color: "black"
                    font.pixelSize: parent.height / 19
                    textFormat: Text.StyledText
                    wrapMode: Text.Wrap
                    text: textItem
                }
            }

            Item {
                Layout.minimumWidth: parent.width
                Layout.minimumHeight: parent.height / 8

                EastButtonTarifPage {
                    anchors.fill: parent
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30

                    onClicked: {
                        pup.typeWindow = 2
                        pup.open()
                    }
                }
            }

            Item {
                //WARNING empty item, not delete
                Layout.minimumWidth: parent.width
                Layout.minimumHeight: parent.height / 16
            }
        }
    }
}
