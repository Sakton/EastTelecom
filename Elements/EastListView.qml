import QtQuick 2.0

ListView {
    width: 320
    model: Model_East_List {
    }
    delegate: EastDelegateEastListView {
        width: parent.width
    }
}
