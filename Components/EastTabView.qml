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

    frameVisible: true
    clip: true

    style: EastTabViewStyle {
        width: parent.width
        height: parent.height / 10
    }

    onCurrentIndexChanged: {
        signalTabContetntClicked(tw.getTab(currentIndex).title)
    }

    EastTab {
        typeInfo: 0
        title: "ИНФО"
        colorr: "#403f3f"
    }

    EastTab {
        typeInfo: 1
        title: "УПРАВЛЕНИЕ"
        colorr: "#403f3f"
    }
}
