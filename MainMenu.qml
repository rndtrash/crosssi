import QtQuick
import QtQuick.Layouts;
import QtQuick.Controls.Universal;

ColumnLayout {
    signal newGame()
    signal joinGame()

    anchors.fill: parent

    Label {
        id: label
        text: qsTr("CrossSI")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        Layout.fillHeight: true
        Layout.fillWidth: true
        font.bold: true
        font.weight: Font.Normal
        font.pointSize: 60
    }

    Grid {
        id: grid
        spacing: 8
        rightPadding: 8
        leftPadding: 8
        bottomPadding: 8
        columns: 2
        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

        Button {
            id: newGameButton
            text: qsTr("New game")
            font.pointSize: 30
            font.capitalization: Font.AllUppercase
            highlighted: true
            Layout.fillWidth: true
            Layout.preferredWidth: 1

            onClicked: newGame
        }

        Button {
            id: joinGameButton
            text: qsTr("Join")
            font.pointSize: 30
            font.capitalization: Font.AllUppercase
            highlighted: false
            Layout.fillWidth: true
            Layout.preferredWidth: 1

            onClicked: joinGame
        }
    }
}
