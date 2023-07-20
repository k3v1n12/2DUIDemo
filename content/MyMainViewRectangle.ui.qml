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
    }
}
