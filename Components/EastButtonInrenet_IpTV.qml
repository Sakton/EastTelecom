import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../Elements"

Rectangle {
    id: root
    width: 380
    height: 25
    border.width: 1
    border.color: "red"
    signal typeClickedButtonInfo(string typeButtonClicked)

    RowLayout {
        anchors.fill: parent
        spacing: 0
        Connections {
            target: btnInternet
            onClickedButtonIntIpTv: {
                typeClickedButtonInfo(texttButtonIpTv)
            }
        }
        Connections {
            target: btnIpTv
            onClickedButtonIntIpTv: {
                typeClickedButtonInfo(texttButtonIpTv)
            }
        }
        EastBtnForInetIpTv {
            id: btnInternet
            textt: "INTERNET"
            color: "red"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.minimumWidth: root.width / 2
            Layout.minimumHeight: root.height
        }
        EastBtnForInetIpTv {
            id: btnIpTv
            textt: "IP TV"
            color: "green"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.minimumWidth: root.width / 2
            Layout.minimumHeight: root.height
        }
    }
}
