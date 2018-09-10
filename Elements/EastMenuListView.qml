import QtQuick 2.0

ListView {
    id: lw
    width: 320

    header: EastHeaderMenu {
    }

    model: Model_East_Menu_List {
    }
    delegate: EastMenuDelegate {
        width: parent.width
    }
}
