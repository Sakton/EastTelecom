import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../Elements"

Rectangle {
    id: root
    implicitWidth: 380
    implicitHeight: 30
    width: implicitWidth
    height: implicitHeight
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
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        EastBtnForInetIpTv {
            id: btnIpTv
            textt: "IP TV"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
