import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Elements"

TabView {
    width: 320
    height: 533
    frameVisible: false
    style: EastTabViewStyle {
        width: parent.width
        height: parent.height / 10
    }
    EastTab {
        title: "111"
        colorr: "#403f3f"
        EastListView {
            //            anchors.fill: parent
            contentWidth: parent.width
            contentHeight: parent.height
        }
    }
    EastTab {
        title: "222"
        colorr: "#403f3f"
    }
}
