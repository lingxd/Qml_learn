import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
//    Rectangle{
//        id:button
//        x:12;y:12
//        width: 116;height: 26
//        color: "lightsteelblue"
//        border.color: "slategrey"
//        Text {
//            id: text1
//            anchors.centerIn: parent
//            text: qsTr("Start")
//        }
//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                status.text = "Button clicked!"
//            }
//        }
//    }
    Button{
        id:button
        x:12;y:12
        text: "Start"
        onClicked: {
            status.text = "Button clicked!"
        }
    }

    Text {
        id: status
        x:12;y:76
        width: 116; height: 26
        text: "waiting ..."
        horizontalAlignment: Text.AlignHCenter
    }

    Transformation{
        x:150;y:100

    }

}
