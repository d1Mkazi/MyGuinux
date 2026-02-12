import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    anchors.right: parent.right
    width: parent.width * 0.33
    height: parent.height;
    color: "grey"

    TabBar {
        id: tabBar
        width: parent.width
        TabButton {
            id: tabProperties
            text: "Properties"
        }
        TabButton {
            id: tabWidgets
            text: "Widgets"
        }
        TabButton {
            id: tabLayout
            text: "Layout"
        }
    }

    StackLayout {
        width: parent.width
        anchors.bottom: parent.bottom
        anchors.top: tabBar.bottom
        currentIndex: tabBar.currentIndex
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            PropertiesTab {}
        }
        Rectangle {
            color: "blue"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle {
            color: "green"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}

