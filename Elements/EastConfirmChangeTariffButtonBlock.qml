import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
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
            color: "red"

            EastTextElement {
                anchors.centerIn: parent
                text: "OK"
            }

            MouseArea {
                onPressed: {

                    //TODO тут
                }

                onReleased: {

                }
            }
        }

        Rectangle {
            id: btnNo
            Layout.maximumWidth: parent.width
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "blue"

            EastTextElement {
                anchors.centerIn: parent
                text: "NO"
            }

            MouseArea {
                onPressed: {

                }

                onReleased: {

                }
            }
        }
    }
}
