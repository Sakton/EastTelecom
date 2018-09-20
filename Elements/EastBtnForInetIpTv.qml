import QtQuick 2.0

Rectangle {
    id: rect
    property string textt: "BUTTON"
    signal clickedButtonIntIpTv(string texttButtonIpTv)
    color: "#7f7f7f"
    border.width: 1
    border.color: "black"

    EastTextElement {
        id: t
        anchors.centerIn: parent
        font.pixelSize: parent.height / 2
        text: parent.textt
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            clickedButtonIntIpTv(t.text)
        }
        onPressed: {
            rect.color = "#696868"
        }

        onReleased: {
            rect.color = "#7f7f7f"
        }
    }
}
