import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

TextField {
    implicitWidth: 320
    implicitHeight: 80
    width: implicitWidth
    height: implicitHeight
    anchors.fill: parent
    font.pixelSize: 18
    placeholderText: "Йоур секонд нумбер"
    style: EastTextFieldStyle {
    }
}
