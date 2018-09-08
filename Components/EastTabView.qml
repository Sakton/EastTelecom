import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Elements"

TabView {
    id: tw
    width: 320
    height: 533
    property int typeInfo: 0
    property int screenHeight: 580
    frameVisible: false

    style: EastTabViewStyle {
        width: parent.width
        height: parent.height / 10
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
