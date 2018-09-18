import QtQuick 2.0

Rectangle {
    id: rctg
    property string textButton: "ПЕРЕЙТИ"
    property color colorButton: "#607f7f7f"
    property color colorButtonHover: "#60696868"
    width: 250
    height: 50
    color: colorButton
    border.width: 1
    border.color: "black"
    Text {
        text: textButton
        anchors.centerIn: parent
        font.pixelSize: parent.height / 2.2
        font.family: "Helvetica"
    }

    MouseArea {
        anchors.fill: parent
        onPressed: {
            rctg.color = colorButtonHover
        }
        onReleased: {
            rctg.color = colorButton
        }
    }
}
