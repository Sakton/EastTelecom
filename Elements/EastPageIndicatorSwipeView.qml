import QtQuick 2.0
import QtQuick.Controls 2.2

PageIndicator {
    id: pageIndicator
    interactive: true
    property double k: 1

    delegate: EastDelegatePageIndicator {
        colorOne: index === currentIndex ? "white" : "red"
        colorTwo: index === currentIndex ? "red" : "white"
        opacity: index === currentIndex ? 0.95 : 0.45
    }
}
