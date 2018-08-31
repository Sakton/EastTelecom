import QtQuick 2.0

ListModel {
    id: eastModel
    property int typeInfo: 0
    //TODO набор данных 1
    property var names: ["Баланс:", "Договор:", "Владелец:", "Статус:", "Тариф:", "Бонус:"]
    property var values: ["-3333.33", "ABC-12345/2018 до н.э.", "Васиа Пупеццо ибн Сауд", "ACTIVE", "Домашний", "100500%"]
    property var thematicImages: ["qrc:/img/ico/abonent.png", "qrc:/img/ico/upravlenie.png", "qrc:/img/ico/operator.png", "qrc:/img/ico/ushi.png", "qrc:/img/ico/tarifs.png", "qrc:/img/ico/abonent.png"]

    //TODO набор данных 2

    //***
    Component.onCompleted: {

        //        modelTypeInfoQuery()
        switch (typeInfo) {
        case 0:
            addItemModel0()
            break
        case 1:
            console.debug("I'm method addItemModel1()")
            break
        default:
            addItemModel0()
            break
        }
    }

    //TODO подготовка к динамике
    function addItemModel0() {
        for (var i = 0; i < names.length; ++i) {
            eastModel.append({
                                 "name": names[i],
                                 "value": values[i],
                                 "thematicImage": thematicImages[i]
                             })
        }
    }

    function addItemModel1() {}
}
