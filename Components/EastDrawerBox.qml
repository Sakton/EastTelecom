import QtQuick 2.0
import QtQuick.Controls 2.0
import "../Elements"

Drawer {
    property int heightItem: 64
    width: 300
    height: (eastListMenuView.count + 1) * heightItem

    EastMenuListView {
        id: eastListMenuView
        anchors.fill: parent
        heightItem: heightItem
    }
}
