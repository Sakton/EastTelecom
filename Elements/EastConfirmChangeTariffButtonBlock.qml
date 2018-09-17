import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    width: 250
    height: 50

    RowLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: btnOk
            Layout.maximumWidth: parent.width
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#696868"
            border.width: 1
            border.color: "black"

            EastTextElement {
                anchors.centerIn: parent
                text: "OK"
            }

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    btnOk.color = "#7f7f7f"
                }

                onReleased: {
                    btnOk.color = "#696868"
                }
            }
        }

        Rectangle {
            id: btnNo
            Layout.maximumWidth: parent.width
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#696868"
            border.width: 1
            border.color: "black"

            EastTextElement {
                anchors.centerIn: parent
                text: "NO"
            }

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    btnNo.color = "#7f7f7f"
                }

                onReleased: {
                    btnNo.color = "#696868"
                }
            }
        }
    }
}
