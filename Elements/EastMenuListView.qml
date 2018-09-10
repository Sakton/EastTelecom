import QtQuick 2.0

ListView {
    width: 320

    header: Rectangle {
        id: r
        height: 64
        Text {
            anchors.centerIn: parent
            font.pixelSize: r.height / 2
            text: "Header"
        }
    }

    model: Model_East_Menu_List {
    }
    delegate: EastMenuDelegate {
        width: parent.width
    }
}
