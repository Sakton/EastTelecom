import QtQuick 2.0

Item {
    property int width1: 200
    property int height1: 100
    width: width1
    height: height1
    Image {
        width: parent.width
        height: parent.height
        implicitWidth: 162
        implicitHeight: 43
        source: "qrc:/img/img/logo_big.png"
    }
}
