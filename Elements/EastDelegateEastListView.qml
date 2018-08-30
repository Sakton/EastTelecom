import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    id: rootItem
    property int mySizeImg: 64
    width: 320
    height: mySizeImg
    RowLayout {
        anchors.fill: parent
        spacing: 0
        Layout.margins: 0
        Rectangle {
            id: imgRect
            Layout.minimumWidth: rootItem.mySizeImg
            Layout.minimumHeight: rootItem.mySizeImg
            Layout.alignment: Qt.AlignCenter
            color: "#403f3f"
            border.width: 1
            border.color: "black"
            Image {
                anchors.fill: parent
                source: model.thematicImage
            }
        }
        ColumnLayout {
            Layout.minimumWidth: rootItem.width - imgRect.width
            Layout.minimumHeight: rootItem.mySizeImg
            Layout.fillWidth: true
            spacing: 0
            Rectangle {
                Layout.minimumWidth: rootItem.width - imgRect.width
                Layout.minimumHeight: rootItem.mySizeImg / 2
                color: "#403f3d"
                border.width: 1
                border.color: "black"
                Text {
                    font.pixelSize: parent.height / 2
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    font.family: "Helvetica"
                    color: "white"
                    text: model.name
                }
            }
            Rectangle {
                Layout.minimumWidth: rootItem.width - imgRect.width
                Layout.minimumHeight: rootItem.mySizeImg / 2
                color: "#403f3f"
                border.width: 1
                border.color: "black"
                Text {
                    font.pixelSize: parent.height / 2
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    font.family: "Helvetica"
                    color: "white"
                    text: model.value
                }
            }
        }
    }
}
