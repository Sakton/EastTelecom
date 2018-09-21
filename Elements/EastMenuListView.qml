import QtQuick 2.0

ListView {
    id: lw
    width: 320
    property int heightItem: 64
    signal signalNameMenuItemListWiew(string nameItem)

    header: EastHeaderMenu {
        width: lw.width
    }
    model: Model_East_Menu_List {
    }
    delegate: EastMenuDelegate {
        id: delegateMenuItem
        width: lw.width
        size: lw.heightItem

        Connections {
            target: delegateMenuItem
            onSignalNameMenuItemDelegate: {
                signalNameMenuItemListWiew(nameItem)
            }
        }
    }
}
