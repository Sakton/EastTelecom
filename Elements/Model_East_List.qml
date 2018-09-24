import QtQuick 2.0

ListModel {
    id: eastModel
    property int typeInfo: 0
    //TODO набор данных 1
    property var names0: ["Баланс:", "Договор:", "Владелец:", "Статус:", "Тариф:", "Бонус:"]
    property var values0: ["-3333.33", "ABC-12345/2018 до н.э.", "Васиа Пупеццо ибн Сауд", "ACTIVE", "Домашний", "100500%"]
    property var thematicImages0: ["qrc:/img/ico/abonent.png", "qrc:/img/ico/upravlenie.png", "qrc:/img/ico/operator.png", "qrc:/img/ico/ushi.png", "qrc:/img/ico/tarifs.png", "qrc:/img/ico/abonent.png"]

    //TODO набор данных 2
    property var names1: ["Текущий тариф:", "Цена:", "Следующий:"]
    property var values1: ["Домашний", "P 300", "Фуксия"]
    property var thematicImages1: ["qrc:/img/ico/ushi.png", "qrc:/img/ico/tarifs.png", "qrc:/img/ico/abonent.png"]

    //TODO набор данных 3
    property var names2: ["Поле IPTV1", "Поле IPTV2", "Поле IPTV3"]
    property var values2: ["ЗначПоле1", "ЗначПоле2", "ЗначПоле3"]
    property var thematicImages2: ["qrc:/img/ico/operator.png", "qrc:/img/ico/upravlenie.png", "qrc:/img/ico/tarifs.png"]

    //    property var valuesMenu:
    Component.onCompleted: {
        eastModel.clear()
        //BUG откуда еще одна установка ???
        vybor(typeInfo)
    }

    onTypeInfoChanged: {
        eastModel.clear()
        vybor(typeInfo)
    }

    function vybor(tInfo) {
        switch (tInfo) {
        case 0:
            addItemModel(names0, values0, thematicImages0)
            break
        case 1:
            addItemModel(names1, values1, thematicImages1)
            break
        case 2:
            addItemModel(names2, values2, thematicImages2)
            break
        default:
            addItemModel(names0, values0, thematicImages0)
            break
        }
    }

    function addItemModel(arrName, arrValue, arrThematicImage) {
        for (var i = 0; i < arrName.length; ++i) {
            eastModel.append({
                                 "name": arrName[i],
                                 "value": arrValue[i],
                                 "thematicImage": arrThematicImage[i]
                             })
        }
    }
}
