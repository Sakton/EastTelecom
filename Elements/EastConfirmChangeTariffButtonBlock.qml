import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    implicitWidth: 250
    implicitHeight: 50
    width: implicitWidth
    height: implicitHeight
    signal signalAnswerTariffButtonBlock(bool answer)

    RowLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: btnOk
            Layout.maximumWidth: parent.width
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#696868"
            border.width: 1
            border.color: "black"

            EastTextElement {
                anchors.centerIn: parent
                text: "ДА"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    signalAnswerTariffButtonBlock(true)
                }

                onPressed: {
                    btnOk.color = "#7f7f7f"
                }

                onReleased: {
                    btnOk.color = "#696868"
                }
            }
        }

        Rectangle {
            id: btnNo
            Layout.maximumWidth: parent.width
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#696868"
            border.width: 1
            border.color: "black"

            EastTextElement {
                anchors.centerIn: parent
                text: "НЕТ"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    signalAnswerTariffButtonBlock(false)
                }

                onPressed: {
                    btnNo.color = "#7f7f7f"
                }

                onReleased: {
                    btnNo.color = "#696868"
                }
            }
        }
    }
}
