import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../Elements"

Rectangle {
    width: 320
    height: 580
    color: "#7f7f7f"

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Item {
            Layout.fillWidth: true
            Layout.minimumHeight: parent.height / 6

            RowLayout {
                anchors.fill: parent
                spacing: 0
                Rectangle {
                    Layout.minimumWidth: parent.width * 2 / 3
                    Layout.fillHeight: true
                    color: "#403f3f"

                    EastTextElement {
                        anchors.fill: parent
                        font.pixelSize: parent.height / 4
                        text: "можно написать или заказать обратный звонок"
                    }
                }

                EastBtnPhoneElement {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
            }
        }

        EastTextAreaElement {
            Layout.margins: 10
            Layout.fillWidth: true
            Layout.fillHeight: true
            focus: true
        }

        EastButtonTarifPage {
            Layout.minimumHeight: parent.height / 12
            Layout.minimumWidth: parent.width / 2
            Layout.alignment: Qt.AlignHCenter
            colorButton: "#403f3f"
            colorButtonHover: "#696868"
            textButton: "ОТПРАВИТЬ"
        }
    }
}
