import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Elements"
import "../Components"
import "../Script.js" as Script


//TODO Text Style OR Font Style
Item {
    id: startPg
    width: 480
    height: 700
    Column {
        spacing: parent.width / 10
        anchors.centerIn: parent

        LogoImg {
            width: startPg.width / 2
            //            height: startPg.width / 4
        }

        LoginPassBlock {
            width: startPg.width / 2
            height: startPg.width / 6
        }

        EastStartPageButton {
            width: startPg.width / 2
            height: startPg.width / 6
        }
    }

    ButtonGuest {
        y: parent.height - height
        width: startPg.width
        height: startPg.width / 12
    }
}
