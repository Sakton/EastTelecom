import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import "../Elements"

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
            font.pointSize: 14
            placeholderText: {
                "Password"
            }
            style: EastTextFieldStyle {
            }
        }
    }
}
