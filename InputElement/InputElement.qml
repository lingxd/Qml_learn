import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    MyTextInput2{
        x:12;y:12

    }

    MyTextEdit{
        x:122
    }

}
