import QtQuick 2.0
import QtQuick.Controls.Styles 1.4

ComboBoxStyle {
    background: Rectangle {
        color: "red"
    }

    font {
        pixelSize: 18
    }

    label: EastTextElement {
        text: control.currentText
    }
}
