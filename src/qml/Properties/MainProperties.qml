import QtQuick
import QtQuick.Layouts
import QtQuick.Controls


Rectangle {
    color: "dimgray"

    Text {
        id: title
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height * 0.15
        text: "1 - Main Properties"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
    }

    ListView {
        id: mainProperties
        visible: true

        anchors.top: title.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        model: ["First", "Second", "Third"]
        delegate: Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: parent.width * 0.05
            height: 30
            color: "grey"
                
            Text {
                height: parent.height * 0.75
                verticalAlignment: Text.AlignVCenter
                anchors.left: parent.left
                text: modelData
            }

            TextField {
                height: parent.height * 0.75
                anchors.right: parent.right
                placeholderText: "Enter"
                topPadding: 1
                bottomPadding: 1
            }
        }
    }
}
