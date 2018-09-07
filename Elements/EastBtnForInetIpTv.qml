import QtQuick 2.0

Rectangle {
    property string textt: "BUTTON"
    signal clickedButtonIntIpTv(string texttButtonIpTv)
    color: "blue"
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
    }
}
