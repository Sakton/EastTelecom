import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../Elements"

Item {
    id: root
    signal signalSendCallMessage

    implicitWidth: 320
    implicitHeight: 580
    width: implicitWidth
    height: implicitHeight

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#403f3f"
            border.width: 1
            border.color: "black"

            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                EastTextElement {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "Уважаемый"
                }

                EastTextElement {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "Иванов Иван Иванович"
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#403f3f"
            border.width: 1
            border.color: "black"

            RowLayout {
                anchors.fill: parent
                spacing: 0

                Image {
                    Layout.minimumWidth: parent.width / 3
                    Layout.fillHeight: true
                    source: "qrc:/img/ico/10.png"
                }

                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    //                   color: "gray"
                    ColumnLayout {
                        anchors.fill: parent
                        spacing: 0

                        EastTextElement {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            text: "Ваш номер:"
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
            color: "#403f3f"
            border.width: 1
            border.color: "black"

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
                        text: "Служба:"
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
            color: "#403f3f"
            border.width: 1
            border.color: "black"

            RowLayout {
                anchors.fill: parent
                spacing: 0

                Item {
                    Layout.minimumWidth: parent.width / 3
                    Layout.fillHeight: true
                    EastTextElement {
                        anchors.centerIn: parent
                        font.pixelSize: parent.height / 2
                        text: "2"
                    }
                }

                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    ColumnLayout {
                        anchors.fill: parent
                        spacing: 0

                        Item {
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            //                            color: "black"
                            EastTextElement {
                                anchors.fill: parent
                                text: "Другой номер:"
                            }
                        }

                        Item {
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            //                           color: "yellow"
                            EastTextInputElement {
                                anchors.fill: parent
                                anchors.margins: 10
                                font.pixelSize: height / 2
                            }
                        }
                    }
                }
            }
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true

            //            color: "magenta"
            EastButtonTarifPage {
                anchors.fill: parent
                anchors.margins: 20
                textButton: "ЗАКАЗАТЬ ЗВОНОК"

                onClicked: {
                    signalSendCallMessage()
                }
            }
        }
    }
}
