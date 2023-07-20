/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.4
import QtQuick.Controls 6.4
import HelloDemoProject

Rectangle {
    id: rectangle
    width: 1300
    height: 740
    color: "#ffffff"

    MyMainViewRectangle {
        id: mainViewRectangle
        width: 703
        height: 366
    }

    Item {
        id: roundButtonItem
        x: 828
        y: 168
        width: 400
        height: 86

        RoundButton {
            id: lagoonRoundButton
            width: 160
            height: 55
            text: "Lagoon"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            autoExclusive: true
            checkable: true
            anchors.leftMargin: 20
            font.pointSize: 15
            font.bold: true
        }

        RoundButton {
            id: spaceRoundButton
            x: 227
            width: 160
            height: 55
            text: "Space"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            autoExclusive: true
            checkable: true
            anchors.rightMargin: 20
            font.bold: true
            font.pointSize: 15
        }

    }

    Item {
        id: radioButtonItem
        x: 926
        y: 276
        width: 236
        height: 184
        visible: lagoonRoundButton.checked || spaceRoundButton.checked

        Image {
            id: catPreviewImage
            y: 111
            width: 82
            height: 58
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            source: "images/cat.png"
            anchors.leftMargin: 35
            anchors.bottomMargin: 15
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: alienPreviewImage
            width: 82
            height: 58
            anchors.left: parent.left
            anchors.top: parent.top
            source: "images/alien.png"
            anchors.topMargin: 15
            anchors.leftMargin: 35
            fillMode: Image.PreserveAspectFit
        }

        RadioButton {
            id: catRadioButton
            x: 134
            y: 120
            text: qsTr("Cat")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 25
            anchors.rightMargin: 40
        }

        RadioButton {
            id: alienRadioButton
            x: 134
            text: qsTr("Alien")
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 25
            anchors.rightMargin: 30
        }
    }

}
