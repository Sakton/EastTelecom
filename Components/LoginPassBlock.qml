import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import "../Elements"
import "../Script.js" as Script

Item {
    id: i
    width: 200
    height: 200

    Column {
        anchors.centerIn: parent
        spacing: parent.height / 5
        TextField {
            width: i.width
            height: i.height / 2
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: height * 2 / 3
            placeholderText: "Login"
            focus: true
            style: EastTextFieldStyle {
            }
        }
        TextField {
            width: i.width
            height: i.height / 2
            horizontalAlignment: Text.AlignHCenter
            echoMode: TextInput.Password
            font.pixelSize: height * 2 / 3
            placeholderText: "Password"
            style: EastTextFieldStyle {
            }
        }
    }
}
