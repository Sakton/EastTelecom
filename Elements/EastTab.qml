import QtQuick 2.9
import QtQuick.Controls 1.4
import "../Components"

Tab {
    id: tab

    property color colorr: "#403f3f"
    property int typeInfo: 0
    signal signalTypeInfo(int typeInfo)

    //    Loader {
    //        //TODO тут интернет
    //    }
    Rectangle {
        color: parent.colorr
        Rectangle {
            id: rec1
            width: parent.width
            height: parent.height / 10
            color: "red"
            z: 1
            EastTextElement {
                anchors.centerIn: parent
                text: "INTERNET"
                font.pixelSize: parent.height / 2
            }
        }

        Loader {
            id: tabViewLoader
            width: parent.width
            height: parent.height - rec1.height
            y: rec1.height
            Component.onCompleted: {
                setSource("qrc:/Elements/EastListView.qml", {
                              "typeInfo": tab.typeInfo
                          })
            }
        }

        EastButtonInrenet_IpTV {
            id: k
            width: parent.width
            height: parent.height / 14
            y: tab.height - height
            z: 1
        }
    }
}
