import QtQuick 2.0
import QtQuick.Controls 1.4

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

        Rectangle {
            id: rec2
            y: tabViewLoader.height
            width: parent.width
            height: parent.height / 10
            color: "blue"
        }
    }

    //    Loader {
    //        //TODO тут кнопки инет/айпитв
    //    }
}
