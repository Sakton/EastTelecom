import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    id: r
    width: 320
    height: 64
    color: "red"
    RowLayout {
        anchors.fill: parent
        spacing: 0
        Rectangle {
            color: "red"
            Layout.preferredWidth: r.height
            Layout.preferredHeight: parent.height
        }
        Rectangle {
            color: "blue"
            Layout.preferredWidth: 2
            Layout.preferredHeight: parent.height
        }
        Rectangle {
            color: "green"
            Layout.preferredWidth: r.height
            Layout.preferredHeight: parent.height
        }
        Rectangle {
            color: "gray"
            Layout.preferredHeight: parent.height
        }
    }
}
