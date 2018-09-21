import QtQuick 2.0
import QtQuick.Controls 2.4
import "../Elements"

Item {
    implicitWidth: 320
    implicitHeight: 580
    width: implicitWidth
    height: implicitHeight
    property int countTarifs: 3

    SwipeView {
        id: view
        currentIndex: 0
        anchors.fill: parent
        orientation: Qt.Horizontal

        Repeater {
            id: rep
            model: countTarifs

            EastTarifElementPage {
                indexItem: view.currentIndex
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
