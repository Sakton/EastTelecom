import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../Components"
import "../Elements"

Item {
    implicitWidth: 320
    implicitHeight: 580
    width: implicitWidth
    height: implicitHeight

    Connections {
        target: menuButton
        onClickedEastButtonMenu: {
            if (drawerBoxLoader.source == "")
                drawerBoxLoader.setSource("qrc:/Components/EastDrawerBox.qml", {
                                              "z": 5,
                                              "y": menuButton.height,
                                              "visible": true
                                          })
            else if (drawerBoxLoader.item.visible) {
                drawerBoxLoader.item.visible = false
            } else {
                drawerBoxLoader.item.visible = true
            }
        }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 1

        EastButtonMenu {
            id: menuButton
            Layout.fillWidth: true
            Layout.maximumHeight: height
        }

        Loader {
            id: drawerBoxLoader
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true

            Loader {
                anchors.fill: parent

                Component.onCompleted: {
                    setSource("qrc:/Components/EastTabView.qml")
                }
            }
        }
    }
}
