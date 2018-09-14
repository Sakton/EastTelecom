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
            Layout.minimumWidth: parent.width
            Layout.minimumHeight: parent.height / 8
            EastTextElement {
                anchors.centerIn: parent
                opacity: 1
                color: "white"
                text: "Тариф"
            }
        }

        Item {
            Layout.minimumWidth: parent.width
            Layout.minimumHeight: parent.height / 2
            EastTextElement {
                anchors.centerIn: parent
                opacity: 1
                color: "white"
                text: "Текст про текущий тариф"
            }
        }

        Item {
            Layout.minimumWidth: parent.width
            Layout.minimumHeight: parent.height / 8

            EastButtonTarifPage {
                anchors.fill: parent
            }
        }
    }
}
