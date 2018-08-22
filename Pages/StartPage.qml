import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Elements"
import "../Components"

Item {
    id: startPg
    width: 480
    height: 700
    Column {
        spacing: 40
        anchors.centerIn: parent

        LogoImg {
            width: startPg.width / 2
            height: width / 4
        }

        LoginPassBlock {
            width: 200
            height: 50
        }

        Rectangle {
            width: 150
            height: 150
            color: "blue"
        }
    }
}
