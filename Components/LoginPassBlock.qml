import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import "../Elements"

Item {
    id: i
    property string login: login.text
    property string pass: pass.text

    implicitWidth: 200
    implicitHeight: 200
    width: implicitWidth
    height: implicitHeight


    //    onPassChanged: {
    //        if (pass === "") {
    //            pass.text = ""
    //            pass.update()
    //        }
    //    }
    Column {
        anchors.centerIn: parent
        spacing: parent.height / 5

        TextField {
            id: login
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
            id: pass
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
