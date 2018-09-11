import QtQuick 2.0

ListView {
    id: lw
    width: 320
    property int heightItem: 64

    header: EastHeaderMenu {
        width: lw.width
    }
    model: Model_East_Menu_List {
    }
    delegate: EastMenuDelegate {
        width: lw.width
        size: lw.heightItem
    }
}
