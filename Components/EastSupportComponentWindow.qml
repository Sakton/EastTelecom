import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../Elements"

Rectangle {
    width: 320
    height: 580

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Item {
            Layout.fillWidth: true
            Layout.minimumHeight: parent.height / 6

            RowLayout {
                anchors.fill: parent
                spacing: 0
                Rectangle {
                    Layout.minimumWidth: parent.width * 2 / 3
                    Layout.fillHeight: true
                    color: "black"

                    EastTextElement {
                        anchors.fill: parent
                        font.pixelSize: parent.height / 4
                        text: "можно написать или позвонить"
                    }
                }

                EastBtnPhoneElement {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
            }
        }

        EastTextAreaElement {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
