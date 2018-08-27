import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Elements"

TabView {
    width: 320
    height: 533
    frameVisible: false
    style: EastTabViewStyle {
    }
    Tab {
        title: "111"
        width: parent.width / 2

        Rectangle {
            //            width: 50
            //            height: 50
            color: "red"
        }
    }
    Tab {
        title: "222"
        width: parent.width / 2
        Rectangle {
            //            width: 50
            //            height: 50
            color: "blue"
        }
    }
}
