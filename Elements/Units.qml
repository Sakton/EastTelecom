import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Private 1.0
import QtQuick.Window 2.2


//Для теста
QtObject {

    property int dpi: Screen.pixelDensity * 25.4

    function dp(x) {
        if (dpi < 120) {
            return x // Для обычного монитора компьютера
        } else {
            return x * (dpi / 160)
        }
    }

    //    function dp(x) {
    //        return Math.round(x * Settings.dpiScaleFactor)
    //    }

    //    function em(x) {
    //        //        return Math.round(x * TextSingleton.font.pixelSize)
    //        return x
    //    }
} //Item {//    property int dpi: Screen.pixelDensity * 25.4

//    function dp(x) {
//        if (dpi < 120) {
//            return x // Для обычного монитора компьютера
//        } else {
//            return x * (dpi / 160)
//        }
//    }
//}

