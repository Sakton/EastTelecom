import QtQuick 2.0

Item {
    signal signalClickedBtnPhoneElement

    implicitWidth: 100
    implicitHeight: 100
    width: implicitWidth
    height: implicitHeight

    Image {
        anchors.fill: parent
        source: "qrc:/img/ico/10.png"
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            console.debug("Click phone")
            signalClickedBtnPhoneElement()
        }
    }
}
