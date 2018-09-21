import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../Components"
import "../Elements"

Item {
    implicitWidth: 320
    implicitHeight: 580
    width: implicitWidth
    height: implicitHeight

    function menuVisible() {
        drawerBox.visible = drawerBox.visible ? false : true
    }

    Connections {
        target: menuButton
        onClickedEastButtonMenu: {
            menuVisible()
        }
    }

    Connections {
        target: drawerBox
        onSignalNameMenuItemDrawer: {
            console.debug(nameItem)

            switch (nameItem) {
            case "Информация":

                contentLoader.setSource("qrc:/Components/EastTabView.qml")
                menuVisible()
                break
            case "Управление":
                contentLoader.setSource("qrc:/Components/EastTabView.qml")
                menuVisible()
                break
            case "Тарифы":
                contentLoader.setSource("qrc:/Components/EastSwipeView.qml")
                menuVisible()
                break
            case "Служба поддержки":
                contentLoader.setSource(
                            "qrc:/Components/EastSupportComponentWindow.qml")
                menuVisible()
                break
            case "Обратный звонок":
                contentLoader.setSource(
                            "qrc:/Components/EastCallbackComponentWindow.qml")
                menuVisible()
                break
            default:
                contentLoader.setSource("qrc:/Components/EastTabView.qml")
                menuVisible()
                break
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

        EastDrawerBox {
            id: drawerBox
            z: 5
            y: menuButton.height
            visible: false
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true

            Loader {
                id: contentLoader
                anchors.fill: parent
                Component.onCompleted: {
                    setSource("qrc:/Components/EastTabView.qml")
                }
            }
        }
    }
}
