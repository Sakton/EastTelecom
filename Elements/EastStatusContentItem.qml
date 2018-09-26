import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    id: root
    implicitWidth: 300
    implicitHeight: 300
    width: implicitWidth
    height: implicitHeight

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#403f3f"

            EastTextElement {
                anchors.fill: parent
                text: "тут текст <font color=\"red\">ОШИБКА</font> или <font color=\"green\">GOOD</font>"
            }
        }
    }
}
