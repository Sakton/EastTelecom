import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

Rectangle {
    width: 320
    height: 580

    Image {
        id: backgroundImg
        opacity: 0.8
        anchors.fill: parent
        source: "qrc:/img/img/tarif_white_1.png"

        ColumnLayout {
            anchors.fill: parent
            spacing: 5

            Item {
                Layout.minimumWidth: parent.width
                Layout.minimumHeight: parent.height / 8
                Text {
                    id: t1
                    anchors.centerIn: parent
                    font.pixelSize: parent.height / 2
                    font.family: "Helvetica"
                    color: "black"
                    text: "ТАРИФ"
                }
            }

            Item {
                Layout.minimumWidth: parent.width
                Layout.minimumHeight: parent.height / 2

                Text {
                    anchors.fill: parent
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    font.family: "Helvetica"
                    color: "black"
                    font.pixelSize: parent.height / 19
                    textFormat: Text.StyledText
                    wrapMode: Text.Wrap
                    text: "Наш стартовый тарифный план с фиксированной
скоростью до <b>12 Мегабит</b> в секунду.
Достоинстом является низкая стоимость. Великолепно
подходит для подавляющего большинства ежедневных
нужд как то - поиск и просмотр информации, общения
в социальных сетях, Skype, любые IM, онлайн игры
<br/>Недостатки - не очень хорошо подходит для
просмотра и скачиваний большого количества данных,
(фильмы, обновления для программных продуктов, в том
числе и для игр).  На этом тарифном плане недоступна
услуга по снятию ограничений скорости в дневное и
ночное время."
                }
            }

            Item {
                Layout.minimumWidth: parent.width
                Layout.minimumHeight: parent.height / 8

                Button {
                    anchors.fill: parent
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30
                    text: "БАТОН"
                }
            }
        }
    }
}
