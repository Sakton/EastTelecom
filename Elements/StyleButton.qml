import QtQuick 2.0
import QtQuick.Controls.Styles 1.4

ButtonStyle {
    background: Rectangle {
        color: control.pressed ? "#7f7f7f" : "#696868"
        border.color: "black"
        border.width: 1
    }
}
