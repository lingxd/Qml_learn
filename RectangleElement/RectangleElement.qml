import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Rectangle{
        id: rect1
        x:12;y:12
        width: 76;height:96
        color: "lightsteelblue"
    }
    Rectangle {
    id: rect2
    x: 112; y: 12
    width: 76; height: 96
    border.color: "lightsteelblue"
    border.width: 4
    radius: 8
    }
    Rectangle{
        id:rect3
        x:12;y:112
        width: 176;height: 96
            MouseArea {
            id: area
            width: parent.width
            height: parent.height
            onClicked: rect4.visible = !rect4.visible
        }
        gradient: Gradient{
            GradientStop{ position: 0.0;color: "lightsteelblue"}
            GradientStop { position: 1.0; color: "slategray" }
        }
        border.color: "red"
    }
    Rectangle{
        id:rect4
        x:200;y:112
        width: 176;height: 96
        gradient: Gradient{
            GradientStop{ position: 0.0;color: "lightsteelblue"}
            GradientStop { position: 1.0; color: "slategray" }
        }
        border.color: "red"
    }
    Text {
        text: "The quick brown fox"
        x:12;y:220
        color: "#303030"
        font.family: "Ubuntu"
        font.pixelSize: 28
    }
    Text {
        id: text1
        width: 40;height: 120
        text: qsTr("A very long text")
        elide: Text.ElideMiddle
        style: Text.Sunken
        styleColor: '#FF4444'
        verticalAlignment: Text.AlignTop

    }
    Image {
        id: img1
        x:12;y:12
        width: 120;height: 100
        source: "cat1.jpg"
    }
    Image {
        id: img2
        x:122;y:12
        width: 48
        height: 118/2
        source: "cat1.jpg"
        fillMode: Image.PreserveAspectCrop
        clip: true
    }
}
