import QtQuick 2.0
import QtQuick.Controls 2.2

PageIndicator {
    id: pageIndicator
    interactive: true
    property int k: 1

    delegate: EastDelegatePageIndicator {
    }
}
