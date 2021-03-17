import QtQuick 2.0

Item {
    width: bg.width
    height: bg.height

    Image{
        id: bg
        source: "WIP-6th-anniversary-wallpaper-dark.jpg"
    }

    MouseArea{
        id: backgroundClicker
        anchors.fill: parent
        onClicked: {
        // reset our little scene
            rocket1.x = 20
            rocket2.rotation = 0
            rocket3.rotation = 0
            rocket3.scale = 1.0
        }
    }


    ClickableImageV2{
        id: rocket1
        x:20
        y:100
        source: "109951164546210608.jpg"
        onClicked:{
            x+=5
        }
    }

    ClickableImageV2 {
        id: rocket2
        x: 180; y: 100
        source: "109951164546210608.jpg"
        smooth: true // need antialising
        onClicked: {
        // increase the rotation on click
            rotation += 5
        }
    }

    ClickableImageV2 {
        id: rocket3
        x: 340; y: 100
        source: "109951164546210608.jpg"
        smooth: true // need antialising
        onClicked: {
        // several transformations
            rotation += 5
            scale -= 0.05
        }
    }
}
