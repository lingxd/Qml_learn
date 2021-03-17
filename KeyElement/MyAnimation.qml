import QtQuick 2.0

Image {
    id: img
    source: "assets/64495434_p0.jpg"
    anchors.fill: parent

    Image {
        id: img1
        source: "assets/109951165683011001.jpg"
        x:40;y:80
        width: 120;height: 120

        NumberAnimation on x{
            to: 240
            duration: 4000
            loops: Animation.Infinite
        }

        RotationAnimation on rotation {
            to: 360
            duration: 4000
            loops: Animation.Infinite
        }
    }

}
