import QtQuick

Rectangle {
    anchors.fill: parent
    color: Qt.rgba(0, 0, 0, 1)

    MouseArea {
        anchors.fill: parent
        onClicked: {
            parent.visible = !parent.visible
        }
    }

    OpacityAnimator on opacity {
        from: 0
        to: 0.75
        duration: 250
    }
}
