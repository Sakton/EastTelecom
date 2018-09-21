import QtQuick 2.0
import QtQuick.Controls 2.2
import "../Elements"

Drawer {
    property int heightItem: 64
    signal signalNameMenuItemDrawer(string nameItem)

    width: 300
    height: (eastListMenuView.count + 1) * heightItem
    position: 0
    clip: true
    background: Rectangle {
        anchors.fill: parent
        color: "#403f3f"
    }

    Connections {
        target: eastListMenuView
        onSignalNameMenuItemListWiew: {
            signalNameMenuItemDrawer(nameItem)
        }
    }

    EastMenuListView {
        id: eastListMenuView
        anchors.fill: parent
        heightItem: heightItem
    }
}
