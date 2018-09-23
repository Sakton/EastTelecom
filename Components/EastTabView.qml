import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import "../Elements"

TabView {
    id: tw
    signal signalTabContetntClicked(string tab)
    property int typeInfo: 0
    property int screenHeight: 580

    implicitWidth: 320
    implicitHeight: 580
    width: implicitWidth
    height: implicitHeight
    currentIndex: 0

    frameVisible: true
    clip: true

    style: EastTabViewStyle {
        width: parent.width
        height: parent.height / 10
    }

    onCurrentIndexChanged: {
        if ((tab1.status === Component.Ready)
                && (tab2.status === Component.Ready))
            signalTabContetntClicked(getTab(currentIndex).title)
    }

    EastTab {
        id: tab1
        typeInfo: 0
        title: "ИНФО"
        colorr: "#403f3f"

        Component.onCompleted: {
            signalTabContetntClicked(title)
        }
    }

    EastTab {
        id: tab2
        typeInfo: 1
        title: "УПРАВЛЕНИЕ"
        colorr: "#403f3f"

        Component.onCompleted: {
            signalTabContetntClicked(title)
        }
    }
}
