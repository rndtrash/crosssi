import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Controls.Universal

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("CrossSI")
    color: Universal.background

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            color: Universal.accent
            border.width: 0
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            height: 32

            RowLayout {
                id: header
                anchors.fill: parent
                Layout.margins: 4
                spacing: 4

                Button {
                    text: qsTr("Back")
                    enabled: stackView.depth > 1
                    flat: true

                    onClicked: stackView.pop()
                }

                Item {
                    Layout.fillWidth: true
                }

                Button {
                    text: qsTr("Settings")
                    flat: true

                    onClicked: settings.visible = !settings.visible
                }
            }
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true

            StackView {
                id: stackView
                anchors.fill: parent

                Component {
                    id: mainMenuPage

                    MainMenu {
                        id: mainMenu
                    }
                }

                initialItem: mainMenuPage
            }

            Settings {
                id: settings
                anchors.fill: parent

                visible: false
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:2}D{i:4}D{i:5}D{i:6}D{i:3}D{i:2}D{i:9}D{i:8}D{i:11}D{i:7}D{i:1}
}
##^##*/
