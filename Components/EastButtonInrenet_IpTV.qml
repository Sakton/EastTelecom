import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../Elements"

Rectangle {
    id: root
    width: 380
    height: 25
    border.width: 1
    border.color: "red"
    RowLayout {
        anchors.fill: parent
        spacing: 0
        EastBtnForInetIpTv {
            textt: "INTERNET"
            color: "red"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.minimumWidth: root.width / 2
            Layout.minimumHeight: root.height
        }
        EastBtnForInetIpTv {
            textt: "IP TV"
            color: "green"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.minimumWidth: root.width / 2
            Layout.minimumHeight: root.height
        }
    }
}
