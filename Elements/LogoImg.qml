import QtQuick 2.0

Item {
    property int width1: 200
    property int height1: 175
    width: width1
    height: height1
    Image {
        width: parent.width
        height: parent.height
        source: "qrc:/img/img/et-logo.png"
    }
}
