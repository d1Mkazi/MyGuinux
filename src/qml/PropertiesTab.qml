import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Column {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height * 0.33
        color: "darkgray"

        Text {
            id: title
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            text: "1 - Main Properties"
        }

        ListView {
            id: mainProperties
            visible: true

            anchors.top: title.bottom
            width: parent.width
            height: parent.height
            model: ["First", "Second", "Third"]
            delegate: Rectangle {
                width: parent.width - 10
                anchors.right: parent.right
                height: 30
                color: "grey"
                
                Text {
                    anchors.left: parent.left
                    text: modelData
                }

                TextField {
                    height: parent.height * 0.75
                    anchors.right: parent.right
                    placeholderText: "Enter"
                }
            }
        }
    }
}