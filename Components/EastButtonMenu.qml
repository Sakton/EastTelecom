import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../Elements"

Rectangle {
    id: r
    signal clickedEastButtonMenu
    property string textOne: "Личный"
    property string textTwo: "Кабинет"
    implicitWidth: 320
    implicitHeight: 64
    width: implicitWidth
    height: implicitHeight

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
                    clickedEastButtonMenu()
                }
            }
        }

        Rectangle {
            color: "black"
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
            anchors.margins: 1

            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                Rectangle {
                    color: "#403f3f"
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    //                    Layout.minimumWidth: parent.width
                    //                    Layout.minimumHeight: r.height / 2
                    Text {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        //                        font.pixelSize: parent.height / 1.5
                        font.pixelSize: parent.height / 3
                        text: textOne
                        color: "white"
                    }
                }

                //                Rectangle {
                //                    color: "#403f3f"
                //                    Layout.fillHeight: true
                //                    Layout.minimumWidth: parent.width
                //                    Layout.minimumHeight: r.height / 2

                //                    Text {
                //                        anchors.left: parent.left
                //                        anchors.verticalCenter: parent.verticalCenter
                //                        font.pixelSize: parent.height / 1.5
                //                        text: textTwo
                //                        color: "white"
                //                    }
                //                }
            }

            Rectangle {
                width: parent.width
                height: 1
                y: parent.height
                color: "#696868"
            }
        }
    }

    Rectangle {
        width: parent.width
        height: 1
        y: parent.height
        color: "black"
    }
}
