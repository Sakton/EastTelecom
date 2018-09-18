import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../Elements"

Rectangle {
    width: 320
    height: 533

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "red"

            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                EastTextElement {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "Ниразу уважаемый"
                }

                EastTextElement {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "Пупкидзэ Пупок Пупкидзовиеч"
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            color: "gray"
            RowLayout {
                anchors.fill: parent
                spacing: 0

                Image {
                    Layout.minimumWidth: parent.width / 3
                    Layout.fillHeight: true
                    source: "qrc:/img/ico/10.png"
                }

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: "gray"

                    ColumnLayout {
                        anchors.fill: parent
                        spacing: 0

                        EastTextElement {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            text: "Телефон:"
                        }

                        EastTextElement {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            text: "123-123-123-123"
                        }
                    }
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "blue"

            RowLayout {
                anchors.fill: parent
                spacing: 0

                Image {
                    Layout.minimumWidth: parent.width / 3
                    Layout.fillHeight: true
                    source: "qrc:/img/ico/operator.png"
                }

                ColumnLayout {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    spacing: 0

                    EastTextElement {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        text: "Куды звонькаем?:"
                    }

                    EastComboBoxElement {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                    }
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "gray"
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "magenta"
        }
    }
}
