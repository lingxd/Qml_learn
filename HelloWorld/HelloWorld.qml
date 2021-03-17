import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    Text {
        anchors.centerIn: parent
        text: qsTr("Hello World")
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    title: qsTr("Hello World")
}
