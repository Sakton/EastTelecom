import QtQuick 2.0

ListView {
    id: lw
    width: 320
    property int typeInfo: 0

    model: Model_East_List {
        typeInfo: lw.typeInfo
    }
    delegate: EastDelegateEastListView {
        width: parent.width
    }
}
