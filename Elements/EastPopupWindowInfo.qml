import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    property int typeInfoWindow: 0
    width: 250
    height: 450
    anchors.centerIn: parent
    border.width: 1
    color: "#607f7f7f"
    border.color: "black"

    ColumnLayout {
        anchors.fill: parent
        spacing: 0
        Item {
            Layout.maximumHeight: parent.height / 8
            Layout.fillHeight: true
            Layout.fillWidth: true
            EastTextElement {
                anchors.centerIn: parent
                opacity: 1
                color: "white"
                text: "Тариф"
            }
        }

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.maximumHeight: parent.height / 2
            EastTextElement {
                anchors.centerIn: parent
                opacity: 1
                color: "white"
                text: "Текст про текущий тариф"
            }
        }

        Item {
            Layout.maximumHeight: parent.height / 8
            Layout.fillHeight: true
            Layout.fillWidth: true

            //            EastButtonTarifPage {
            //                anchors.fill: parent
            //                anchors.leftMargin: parent.width / 10
            //                anchors.rightMargin: parent.width / 10
            //            }
            EastConfirmChangeTariffButtonBlock {
                anchors.fill: parent
                //                anchors.leftMargin: parent.width / 10
                //                anchors.rightMargin: parent.width / 10
            }
        }
    }
}
