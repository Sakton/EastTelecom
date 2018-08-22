import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: i
    width: 200
    height: 100

    Column {
        anchors.centerIn: parent
        spacing: 10
        TextField {
            width: i.width
            height: i.height / 2
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 14
            text: "Login"
        }
        TextField {
            width: i.width
            height: i.height / 2
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 14
            text: "Password"
        }
    }
}
