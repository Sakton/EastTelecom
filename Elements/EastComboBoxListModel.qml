import QtQuick 2.0

ListModel {
    id: listModelComboBox

    property var namesItem: ["Тех. Поддержка", "Финансы"]

    function addItem(namsItem) {
        for (var i = 0; i < namsItem.length; ++i) {
            listModelComboBox.append({
                                         "text": namsItem[i]
                                     })
        }
    }

    Component.onCompleted: {
        addItem(namesItem)
    }
}
