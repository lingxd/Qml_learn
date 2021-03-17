import QtQuick 2.0

Rectangle{
    width: 200
    height: 80
    color: "linen"

    TextInput{
        id: input1
        x:8;y:8
        width: 96;height: 20
        focus: true
        text: "text input1 1"
    }

    TextInput{
        id: input2
        x:8;y:36
        width: 96;height: 20
//        focus: true
        text: "text input1 2"
    }
}
