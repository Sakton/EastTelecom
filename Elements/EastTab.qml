import QtQuick 2.0
import QtQuick.Controls 1.4

Tab {
    id: tab

    property color colorr: "#403f3f"
    property int typeInfo: 0
    signal signalTypeInfo(int typeInfo)

    Rectangle {
        color: parent.colorr
        Loader {
            id: tabViewLoader
            width: parent.width
            height: parent.height
            Component.onCompleted: {
                setSource("qrc:/Elements/EastListView.qml", {
                              "typeInfo": tab.typeInfo
                          })
            }
        }
    }
}
