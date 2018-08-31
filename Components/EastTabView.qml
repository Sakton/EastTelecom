import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Elements"

TabView {
    width: 320
    height: 533
    property int typeInfo: 0
    frameVisible: {
        console.debug(currentIndex)
        false
    }

    style: EastTabViewStyle {
        width: parent.width
        height: parent.height / 10
    }

    EastTab {
        typeInfo: 0
        title: {
            return "111"
        }
        colorr: "#403f3f"
    }

    EastTab {
        typeInfo: 1
        title: {
            return "222"
        }
        colorr: "#403f3f"
    }
}
