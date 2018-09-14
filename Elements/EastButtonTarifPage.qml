import QtQuick 2.0

Rectangle {
    id: rctg
    width: 250
    height: 50
    color: "#607f7f7f"
    border.width: 1
    border.color: "black"
    Text {
        text: "ПЕРЕЙТИ"
        anchors.centerIn: parent
        font.pixelSize: parent.height / 2
        font.family: "Helvetica"
    }

    MouseArea {
        anchors.fill: parent
        onPressed: {
            rctg.color = "#60696868"
        }
        onReleased: {
            rctg.color = "#607f7f7f"
        }
    }
}
