import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Elements"
import "../Components"


//TODO Text Style OR Font Style
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
            width: startPg.width / 2
            height: 80
        }

        EastStartPageButton {
            width: startPg.width / 2
            height: 80
        }
    }

    Button {
        y: parent.height - height
        width: parent.width
        height: 50
        text: "Забыл пароль / Гость"
    }
}
