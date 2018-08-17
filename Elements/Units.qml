import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Private 1.0


//Для теста
QtObject {
    function dp(x) {
        return Math.round(x * Settings.dpiScaleFactor)
    }

    function em(x) {
        //        return Math.round(x * TextSingleton.font.pixelSize)
        return x
    }
}
