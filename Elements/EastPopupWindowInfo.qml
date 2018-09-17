import QtQuick 2.0
import QtQuick.Layouts 1.3

Rectangle {
    id: root
    property int typeInfoWindow: 0
    property string textTitle: "textTitle"
    property string textDescription: "textDescription <b>textDescription</b> <i>textDescription</i> <b><i>textDescription</i></b>"
    width: 250
    height: 450
    anchors.centerIn: parent
    border.width: 1
    color: "#607f7f7f"
    border.color: "black"

    ColumnLayout {
        anchors.fill: parent
        spacing: 0
        Item {
            Layout.maximumHeight: parent.height / 8
            Layout.fillHeight: true
            Layout.fillWidth: true
            EastTextElement {
                opacity: 1
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
                anchors.fill: parent
                Component.onCompleted: {
                    console.debug(root.typeInfoWindow)
                    switch (root.typeInfoWindow) {
                    case 0:
                        setSource("qrc:/Elements/EastButtonTarifPage.qml", {
                                      "textButton": "ПЕРЕЙТИ"
                                  })
                        break
                    case 1:
                        setSource("qrc:/Elements/EastConfirmChangeTariffButtonBlock.qml")
                        break
                    case 2:
                        setSource("qrc:/Elements/EastButtonTarifPage.qml", {
                                      "textButton": "СЛУЖБА ПОДДЕРЖКИ"
                                  })
                        break
                    case 3:
                        setSource("")
                        break
                    }
                }
            }
        }
    }
}
