import QtQuick 2.0

ListView {
    id: lw
    width: 320
    property int ff: 0
    property int typeInfo: 0
    signal ddddd

    model: Model_East_List {
        typeInfo: lw.typeInfo
    }

    delegate: EastDelegateEastListView {
        id: delegateModel
        width: parent.width
    }
}
