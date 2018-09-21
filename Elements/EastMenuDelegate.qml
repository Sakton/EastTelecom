import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    property int size: 64
    signal signalNameMenuItemDelegate(string nameItem)

    width: 320
    height: size
    RowLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            Layout.minimumWidth: size
            Layout.minimumHeight: size
            color: "red"
            border.color: "black"
            border.width: 1
            Image {
                anchors.fill: parent
                source: model.thematickImageMenuItem
            }
        }

        Rectangle {
            id: rectItem
            Layout.fillWidth: parent
            Layout.fillHeight: parent
            color: "green"
            border.color: "black"
            border.width: 1

            Text {
                id: rectTextItem
                font.pixelSize: parent.height / 3
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 5
                font.family: "Helvetica"
                color: "white"
                text: model.nameMenuItem
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            signalNameMenuItemDelegate(rectTextItem.text)
        }
    }
}
