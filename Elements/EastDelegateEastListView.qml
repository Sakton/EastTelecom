import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    id: rootItem
    property int mySizeImg: 48
    width: 320
    height: mySizeImg
    RowLayout {
        anchors.fill: parent
        spacing: 1
        Layout.margins: 1

        Rectangle {
            id: imgRect
            Layout.minimumWidth: rootItem.mySizeImg
            Layout.minimumHeight: rootItem.mySizeImg
            Layout.alignment: Qt.AlignCenter
            //            border.color: "red"
            Image {
                anchors.fill: parent
                source: "qrc:/img/ico/abonent.png"
            }
        }
        Rectangle {
            Layout.minimumWidth: rootItem.width - imgRect.width
            Layout.minimumHeight: rootItem.mySizeImg
            Layout.fillWidth: true
            //            border.color: "green"
            EastTextElement {
                anchors.centerIn: parent
                font.pixelSize: parent.height / 2
                color: "black"
                text: "qw: " + model.name + " Num: " + model.number
            }
        }
    }
}
