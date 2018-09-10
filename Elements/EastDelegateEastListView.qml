import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    id: rootItem
    property int mySizeImg: 64
    width: 320
    height: mySizeImg

    RowLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: imgRect
            Layout.minimumWidth: rootItem.mySizeImg
            Layout.minimumHeight: rootItem.mySizeImg
            Layout.alignment: Qt.AlignCenter
            color: {
                if (model.name === "Текущий тариф:")
                    "#696868"
                else
                    "#403f3f"
            }
            border.width: 1
            border.color: {
                if (model.name === "Текущий тариф:")
                    "gray"
                else
                    "black"
            }
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
                id: firstRect
                Layout.minimumWidth: rootItem.width - imgRect.width
                Layout.minimumHeight: rootItem.mySizeImg / 2
                color: {
                    if (model.name === "Текущий тариф:")
                        "#696868"
                    else
                        "#403f3f"
                }
                border.width: 1
                border.color: {
                    if (model.name === "Текущий тариф:")
                        "gray"
                    else
                        "black"
                }
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
                id: secondRect
                Layout.minimumWidth: rootItem.width - imgRect.width
                Layout.minimumHeight: rootItem.mySizeImg / 2
                color: {
                    if (model.name === "Текущий тариф:")
                        "#696868"
                    else
                        "#403f3f"
                }
                border.width: 1
                border.color: {
                    if (model.name === "Текущий тариф:")
                        "gray"
                    else
                        "black"
                }
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

    MouseArea {
        anchors.fill: parent
        onClicked: {
            switch (model.name) {
            case "Текущий тариф:":
                console.debug(model.name)
                break
            }
        }
        onPressed: {
            switch (model.name) {
            case "Текущий тариф:":
                firstRect.color = "black"
                secondRect.color = "black"
                imgRect.color = "black"
                //                firstRect.border.color = "red"
                //                secondRect.border.color = "red"
                //                imgRect.border.color = "red"
                break
            }
        }
        onReleased: {
            switch (model.name) {
            case "Текущий тариф:":
                firstRect.color = "#696868"
                secondRect.color = "#696868"
                imgRect.color = "#696868"
                //                firstRect.border.color = "gray"
                //                secondRect.border.color = "gray"
                //                imgRect.border.color = "gray"
                break
            }
        }
    }
}
