import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4
import "../Elements"
import "../Components"

Rectangle {
    implicitWidth: 320
    implicitHeight: 580
    width: implicitWidth
    height: implicitHeight
    color: "#403f3f"

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true

            LogoImg {
                anchors.centerIn: parent
            }
        }

        Item {
            Layout.fillWidth: true
            Layout.minimumHeight: parent.height / 8

            EastTextInputElement {
                anchors.fill: parent
                anchors.margins: 10
                textesPlaceholder: "ФИО"
            }
        }

        Item {
            Layout.fillWidth: true
            Layout.minimumHeight: parent.height / 8

            EastTextInputElement {
                anchors.fill: parent
                anchors.margins: 10
                textesPlaceholder: "Номер мобильника"
            }
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true

            EastButtonTarifPage {
                width: parent.width * 0.7
                height: parent.height * 0.5
                anchors.centerIn: parent
                textButton: "Выслать"
            }
        }
    }
}
