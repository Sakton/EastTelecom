import QtQuick 2.0

ListModel {

    ListElement {
        name: "Баланс:"
        value: "-3333.33"
        thematicImage: "qrc:/img/ico/abonent.png"
        //        number: 11
    }
    ListElement {
        name: "Договор:"
        value: "ABC-12345/2018 до н.э."
        thematicImage: "qrc:/img/ico/upravlenie.png"
        //        number: 22
    }
    ListElement {
        name: "Владелец:"
        value: "Васиа Пупеццо ибн Сауд"
        thematicImage: "qrc:/img/ico/operator.png"
        //        number: 33
    }
    ListElement {
        name: "Статус:"
        value: "ACTIVE"
        thematicImage: "qrc:/img/ico/ushi.png"
        //        number: 33
    }
    ListElement {
        name: "Тариф:"
        value: "Домашний"
        thematicImage: "qrc:/img/ico/tarifs.png"
        //        number: 33
    }
    ListElement {
        name: "Бонус:"
        value: "100500%"
        thematicImage: "qrc:/img/ico/abonent.png"
        //        number: 33
    }

    //    Item {
    //        id: r
    //        Repeater {
    //            model: 3
    //            ListElement {
    //                name: "name: " + index()
    //                number: index() + index()
    //            }
    //        }
    //    }
}
