import QtQuick 2.14
import QtQuick.Window 2.14

// The root element is the Rectangle

Rectangle {
    // name this element root
    id: root

    width: 120;height: 240

    color: "#D8D8D8"

    Image {
        id: rocket
        x: (parent.width-width)/2;y: 20

        source: "assets/rocket.jpg"
    }
    Text {
        id: label
        x: 24; y: 24
        // custom counter property for space presses
        property int spacePresses: 0
        text: "Space pressed: " + spacePresses + " times"
        // (1) handler for text changes
        onTextChanged: console.log("text changed to:", text)
        // need focus to receive key events
        focus: true
        // (2) handler with some JS
        Keys.onSpacePressed: {
        increment()
        }
        // clear the text on escape
        Keys.onEscapePressed: {
        label.text = ''
        }
        // (3) a JS function
        function increment() {
        spacePresses = spacePresses + 1
        }
    }
}
