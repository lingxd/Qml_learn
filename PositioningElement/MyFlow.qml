import QtQuick 2.0

LighterSquare{
    id: root
    width: 160
    height: 160

    Flow{
        anchors.centerIn: parent
        anchors.margins: 20
        spacing: 20
        RedSquare{}
        BlueSquare{}
        GreenSquare{}
    }
}
