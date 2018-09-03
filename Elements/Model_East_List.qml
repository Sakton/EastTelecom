import QtQuick 2.0

ListModel {
    id: eastModel
    property int typeInfo: 0
    //TODO набор данных 1
    property var names0: ["Баланс:", "Договор:", "Владелец:", "Статус:", "Тариф:", "Бонус:"]
    property var values0: ["-3333.33", "ABC-12345/2018 до н.э.", "Васиа Пупеццо ибн Сауд", "ACTIVE", "Домашний", "100500%"]
    property var thematicImages0: ["qrc:/img/ico/abonent.png", "qrc:/img/ico/upravlenie.png", "qrc:/img/ico/operator.png", "qrc:/img/ico/ushi.png", "qrc:/img/ico/tarifs.png", "qrc:/img/ico/abonent.png"]

    //TODO набор данных 2
    property var names1: ["Текущий тариф", "Цена", "Следующий"]
    property var values1: ["Домашний", "P 300", "Фуксия"]
    property var thematicImages1: ["qrc:/img/ico/ushi.png", "qrc:/img/ico/tarifs.png", "qrc:/img/ico/abonent.png"]
    //***
    Component.onCompleted: {

        //        modelTypeInfoQuery()
        switch (typeInfo) {
        case 0:
            addItemModel0()
            break
        case 1:
            //            console.debug("I'm method addItemModel1()")
            addItemModel1()
            break
        default:
            addItemModel0()
            break
        }
    }

    //TODO подготовка к динамике
    function addItemModel0() {
        for (var i = 0; i < names0.length; ++i) {
            eastModel.append({
                                 "name": names0[i],
                                 "value": values0[i],
                                 "thematicImage": thematicImages0[i]
                             })
        }
    }

    function addItemModel1() {
        for (var i = 0; i < names1.length; ++i) {
            eastModel.append({
                                 "name": names1[i],
                                 "value": values1[i],
                                 "thematicImage": thematicImages1[i]
                             })
        }
    }
}
