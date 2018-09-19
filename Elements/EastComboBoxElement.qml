import QtQuick 2.0
import QtQuick.Controls 2.2

ComboBox {
    id: cb
    width: 320
    height: 50
    currentIndex: 0

    model: EastComboBoxListModel {
        id: mod
    }

    delegate: EastComboBoxDelegate {
        width: cb.width
    }

    contentItem: EastTextElement {
        text: cb.displayText
    }

    background: Rectangle {
        width: cb.width
        height: cb.height
        color: "#696868"
        radius: height / 2
    }
}
