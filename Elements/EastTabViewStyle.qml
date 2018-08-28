import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.4

TabViewStyle {
    id: tvs
    property int width: 150
    property int height: 40
    frameOverlap: 0
    tabsAlignment: Qt.AlignHCenter
    tab: Rectangle {
        implicitWidth: tvs.width / 2
        implicitHeight: tvs.height
        color: styleData.selected ? "red" : "blue"
        EastTextElement {
            anchors.centerIn: parent
            color: styleData.selected ? "blue" : "red"
            font.pixelSize: tvs.height / 2
            text: styleData.title
        }
    }
}
