import QtQuick 2.0
import QtQuick.Controls 2.2

ItemDelegate {
    width: 300
    height: 40

    background: Rectangle {
        width: parent.width
        border.width: 1
        border.color: "black"
        color: "#696868"
    }

    contentItem: EastTextElement {
        text: model.text
    }
}
