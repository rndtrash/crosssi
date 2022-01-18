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

    ColumnLayout {
        anchors.fill: parent

        Rectangle {
            Layout.fillWidth: true
            color: Universal.accent
            border.width: 0
            height: 32

            RowLayout {
                id: header
                anchors.fill: parent
                Layout.margins: 4
                spacing: 4

                Button {
                    text: qsTr("Back")
                }

                Item {
                    Layout.fillWidth: true
                }

                Button {
                    text: qsTr("Settings")
                }
            }
        }

        StackView {
            id: stackView
            Layout.fillWidth: true
            Layout.fillHeight: true

            Component {
                id: mainMenuPage

                MainMenu {
                    id: mainMenu
                }
            }

            initialItem: mainMenuPage
        }
    }
}
