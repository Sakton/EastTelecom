import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    width: 320
    height: 64
    RowLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            color: "red"
            border.color: "black"
            border.width: 1
            Image {
                anchors.fill: parent
                source: model.thematickImageMenuItem
            }
        }

        Rectangle {
            Layout.fillWidth: parent
            Layout.fillHeight: parent
            color: "green"
            border.color: "black"
            border.width: 1

            Text {
                font.pixelSize: parent.height / 3
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 5
                font.family: "Helvetica"
                color: "white"
                text: model.nameMenuItem
            }
            //            EastTextElement {
            //                text: model.nameMenuItem
            //            }
        }
    }
}
