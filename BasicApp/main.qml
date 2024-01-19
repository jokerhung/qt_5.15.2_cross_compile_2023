import QtQuick 2.12
import QtQuick.Window 2.12

Window
{
    visible: true
    width: 800
    height: 480
    title: qsTr("Hello World")
    color: "black"

    property int theme: 0

    FontLoader
    {
        id: fontOpenSans
        source:"qrc:/fonts/OpenSans-Light.ttf"
    }

    Rectangle
    {
        id: button
        height: 60
        width: 150
        color: "transparent"
        anchors.centerIn: parent
        border.color: "white"
        border.width: 1
        radius: 5

        Text {
            id: buttonText
            text: qsTr("Change")
            anchors.centerIn: parent
            color: "white"

            font.family: fontOpenSans.name
            font.pointSize: 20
        }

        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                theme = theme === 0 ? 1 : 0
            }

        }

    }

    Image
    {
        id: imgSun
        source: theme == 0 ? "qrc:/images/sun.png" : "qrc:/images/white.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: button.top
        anchors.bottomMargin: 50
    }


}
