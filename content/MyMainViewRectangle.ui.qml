import QtQuick 6.4
import QtQuick.Controls 6.4
import HelloDemoProject

Rectangle {
    id: mainViewRectangle
    width: 1025
    height: 574
    color: "#f4f2f2"
    radius: 10
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.left
    state: "Default"
    anchors.leftMargin: 100

    Image {
        id: image
        anchors.fill: parent
        source: "qrc:/qtquickplugin/images/template_image.png"
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20
        fillMode: Image.PreserveAspectFit

        Image {
            id: suitImage
            x: 154
            y: 141
            width: 100
            height: 100
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit

            Image {
                id: alienImage
                x: 8
                y: 0
                width: 84
                height: 38
                visible: alienRadioButton.checked
                source: "images/alien.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: catImage
                x: 8
                y: 0
                width: 84
                height: 38
                visible: catRadioButton.checked
                source: "images/cat.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }
    states: [
        State {
            name: "Lagoon"
            when: lagoonRoundButton.checked

            PropertyChanges {
                target: image
                source: "images/lagoon.jpg"
                fillMode: Image.PreserveAspectFit
                autoTransform: false
                anchors.rightMargin: 20
                anchors.bottomMargin: 20
                anchors.leftMargin: 20
                anchors.topMargin: 20
            }

            PropertyChanges {
                target: suitImage
                x: 152
                y: 66
                width: 100
                height: 160
                visible: true
                source: "images/diver.png"
            }

            PropertyChanges {
                target: alienImage
                x: 8
                y: 13
                width: 76
                height: 26
            }

            PropertyChanges {
                target: catImage
                x: 7
                y: 5
            }
        },

        State {
            name: "Space"
            when: spaceRoundButton.checked

            PropertyChanges {
                target: image
                source: "images/planet.png"
                anchors.rightMargin: 20
                anchors.bottomMargin: 20
                anchors.leftMargin: 20
                anchors.topMargin: 20
            }

            PropertyChanges {
                target: suitImage
                x: 198
                y: 98
                width: 208
                height: 210
                source: "images/spacesuit.png"
            }

            PropertyChanges {
                target: alienImage
                x: 54
                y: 8
                width: 84
                height: 52
            }

            PropertyChanges {
                target: catImage
                x: 54
                y: 8
                width: 84
                height: 52
            }
        },
        State {
            name: "Default"
            when: !lagoonRoundButton.checked && spaceRoundButton.checked
        }
    ]
}
