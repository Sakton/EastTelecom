import QtQuick 2.0
import QtQuick.Controls 1.2
import "../Elements"

Button {
    width: 150
    height: 100
    EastTextElement {
        text: "LOGIN"
        font.pixelSize: parent.height / 2
    }
    style: StyleButton {
    }
}
