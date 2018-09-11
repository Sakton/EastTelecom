import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    id: r
    property color clr: "#403f3f"
    property string txtOne: "Пупочоквадзе Васекл"
    property string txtTwo: "Пупочоквадзевич"
    width: 320
    height: 64
    color: clr
    RowLayout {
        anchors.fill: parent
        spacing: 0
        Rectangle {
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            color: r.clr
            Image {
                anchors.fill: parent
                source: "qrc:/img/ico/abonent.png"
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            ColumnLayout {
                anchors.fill: parent
                spacing: 0
                Rectangle {
                    color: r.clr
                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: parent.height / 2
                    EastTextElement {
                        anchors.centerIn: parent
                        font.pixelSize: parent.height / 1.5
                        text: txtOne
                    }
                }

                Rectangle {
                    color: r.clr
                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: parent.height / 2
                    EastTextElement {
                        anchors.centerIn: parent
                        font.pixelSize: parent.height / 1.5
                        text: txtTwo
                    }
                }
            }
        }
    }
}
