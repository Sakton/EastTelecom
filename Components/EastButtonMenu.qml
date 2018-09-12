import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../Elements"

Rectangle {
    id: r
    width: 320
    height: 64
    RowLayout {
        anchors.fill: parent
        spacing: 0
        Rectangle {
            color: "#403f3f"
            Layout.fillWidth: true
            Layout.maximumWidth: r.height
            height: parent.height

            Image {
                anchors.fill: parent
                source: "qrc:/img/ico/menu_show_list.png"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("EastMenuButton only icon menu")
                }
            }
        }

        Rectangle {
            color: "#696868"
            Layout.fillWidth: true
            Layout.maximumWidth: 1
            height: parent.height
        }

        Rectangle {
            color: "#403f3f"
            Layout.fillWidth: true
            Layout.maximumWidth: r.height
            height: parent.height

            Image {
                anchors.centerIn: parent
                width: parent.width / 2
                height: parent.height / 2
                source: "qrc:/img/ico/Iconew.png"
            }
        }

        Rectangle {
            Layout.fillWidth: true
            height: parent.height

            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                Rectangle {
                    color: "#403f3f"
                    Layout.fillHeight: true
                    Layout.minimumWidth: parent.width
                    Layout.minimumHeight: r.height / 2

                    Text {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: parent.height / 1.5
                        text: "Личный"
                    }
                }

                Rectangle {
                    color: "#403f3f"
                    Layout.fillHeight: true
                    Layout.minimumWidth: parent.width
                    Layout.minimumHeight: r.height / 2

                    Text {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: parent.height / 1.5
                        text: "Кабинет"
                    }
                }
            }
        }
    }

    Rectangle {
        width: parent.width
        height: 1
        y: parent.height
        color: "#696868"
    }
}
