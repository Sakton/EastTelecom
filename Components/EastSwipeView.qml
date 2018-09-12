import QtQuick 2.0
import QtQuick.Controls 2.4
import "../Elements"

Item {
    width: 320
    height: 580
    SwipeView {
        id: view
        currentIndex: 0
        anchors.fill: parent
        orientation: Qt.Horizontal

        Repeater {
            id: rep
            model: 3

            EastItemSwipeView {
                clr: {
                    switch (index) {
                    case 0:
                        return "red"
                    case 1:
                        return "blue"
                    case 2:
                        return "green"
                    }
                }
            }
        }
    }

    EastPageIndicatorSwipeView {
        count: view.count
        currentIndex: view.currentIndex

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
    }
}
