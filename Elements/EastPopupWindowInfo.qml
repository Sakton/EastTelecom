import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    id: root
    signal signalAnswerTariffButtonBlockPopupWinInfo(bool answer)

    property int typeInfoWindow: 0
    property string textTitle: "textTitle"
    property string textDescription: "textDescription <b>textDescription</b> <i>textDescription</i> <b><i>textDescription</i></b>"
    width: 250
    height: 450
    anchors.centerIn: parent
    border.width: 1
    color: "#607f7f7f"
    border.color: "black"

    function setBtn(typeInf) {
        switch (typeInf) {
        case 0:
            btnLoader.setSource("")
            break
        case 1:
            //TODO пока убрал с карты приложения
            btnLoader.setSource("qrc:/Elements/EastButtonTarifPage.qml", {
                                    "textButton": "ПЕРЕЙТИ"
                                })
            break
        case 2:
            btnLoader.setSource("qrc:/Elements/EastButtonTarifPage.qml", {
                                    "textButton": "СЛУЖБА ПОДДЕРЖКИ"
                                })
            break
        case 3:
            btnLoader.setSource(
                        "qrc:/Elements/EastConfirmChangeTariffButtonBlock.qml")
            break
        default:
            btnLoader.setSource("")
        }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Item {
            Layout.maximumHeight: parent.height / 8
            Layout.fillHeight: true
            Layout.fillWidth: true

            EastTextElement {
                anchors.fill: parent
                color: "white"
                text: textTitle
            }
        }

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.maximumHeight: parent.height * 3 / 4

            EastTextElement {
                anchors.fill: parent
                anchors.margins: 5
                color: "white"
                text: textDescription
            }
        }

        Item {
            Layout.maximumHeight: parent.height / 8
            Layout.fillHeight: true
            Layout.fillWidth: true

            Loader {
                id: btnLoader
                anchors.fill: parent
                Component.onCompleted: {
                    setBtn(root.typeInfoWindow)
                    if (root.typeInfoWindow === 3)
                        btnLoader.item.signalAnswerTariffButtonBlock.connect(
                                    root.signalAnswerTariffButtonBlockPopupWinInfo)
                }
            }
        }
    }
}
