import QtQuick 2.9
import QtQuick.Controls 1.4
import "../Components"

Tab {
    id: tab
    property color colorr: "#403f3f"
    property int typeInfo: 0

    //    signal signalTypeInfo(string typeInfo)
    Rectangle {
        anchors.fill: parent
        color: parent.colorr

        Loader {
            id: internetIptvPole
            width: parent.width
            height: parent.height / 10
            z: 1
            Component.onCompleted: {
                if (typeInfo == 0)
                    setSource("qrc:/Components/EastPoleInternetIpTv.qml")
            }

            Connections {
                target: blockButtonsInternetIpTv.item
                onTypeClickedButtonInfo: {
                    internetIptvPole.item.txt = typeButtonClicked
                }
            }
        }

        Loader {
            id: tabViewLoader
            width: parent.width
            height: {
                if (typeInfo == 0)
                    parent.height - internetIptvPole.height
                else
                    parent.height
            }
            y: {
                if (typeInfo == 0)
                    return internetIptvPole.height
                else
                    return 0
            }

            Component.onCompleted: {
                setSource("qrc:/Elements/EastListView.qml", {
                              "typeInfo": tab.typeInfo
                          })
            }

            Connections {
                target: blockButtonsInternetIpTv.item
                onTypeClickedButtonInfo: {
                    if (typeButtonClicked === "INTERNET") {
                        tabViewLoader.setSource(
                                    "qrc:/Elements/EastListView.qml", {
                                        "typeInfo": tab.typeInfo
                                    })
                    } else if (typeButtonClicked === "IP TV") {
                        tabViewLoader.setSource(
                                    "qrc:/Elements/EastListView.qml", {
                                        "typeInfo": 2 //TODO магическое число, подумать... Тип данных в модель
                                    })
                    }
                }
            }
        }

        Loader {
            id: blockButtonsInternetIpTv
            width: parent.width
            height: parent.height / 10
            y: tab.height - height
            z: 1
            Component.onCompleted: {
                if (typeInfo == 0)
                    setSource("qrc:/Components/EastButtonInrenet_IpTV.qml")
            }
        }
    }
}
