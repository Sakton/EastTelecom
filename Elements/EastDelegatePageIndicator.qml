import QtQuick 2.0

Rectangle {
    property int k: 1
    width: 15 * k
    height: 15 * k
    color: "black"
    Image {
        anchors.fill: parent
        source: "qrc:/img/ico/Iconew.png"
    }
}
