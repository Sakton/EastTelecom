import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Elements"

Button {
    width: 480
    height: 80
    EastTextElement {
        anchors.fill: parent
        text: "Забыл пароль"
        font.pixelSize: parent.height / 2
    }
    style: StyleButton {
    }
}
