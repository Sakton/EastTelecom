import QtQuick 2.0

Item {
    property int width1: 330
    property int height1: 250
    property int idSource: 88
    width: width1
    height: height1
    Image {
        width: parent.width
        height: parent.height
        source: {
            switch (idSource) {
            case 88:
                return "qrc:/img/img/tarif_white_1.png"
            case 89:
                return "qrc:/img/img/magenta_1.png"
            case 90:
                return "qrc:/img/img/blue_1.png"
            case 91:
                return "qrc:/img/img/golden_1.png"
            default:
                return "qrc:/img/img/tarif_white_1.png"
            }
        }
    }
}
