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

        MainProperties {
            anchors.fill: parent
        }
    }
}
