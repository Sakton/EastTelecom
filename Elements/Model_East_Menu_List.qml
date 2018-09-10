import QtQuick 2.0

ListModel {
    id: menuModel
    property var nameMenuItem: ["Информация", "Управление", "Тарифы", "Служба поддержки", "Обратный звонок"]
    property var thematickImageMenuItem: ["qrc:/img/ico/tarifs.ico", "qrc:/img/ico/abonent.ico", "qrc:/img/ico/upravlenie.ico", "qrc:/img/ico/tarifs.ico", "qrc:/img/ico/abonent.ico"]

    function addItemList(names, imgs) {
        for (var i = 0; i < names.length; ++i) {
            menuModel.append({
                                 "nameMenuItem": names[i],
                                 "thematickImageMenuItem": imgs[i]
                             })
        }
    }

    Component.onCompleted: {
        addItemList(nameMenuItem, thematickImageMenuItem)
    }
}
