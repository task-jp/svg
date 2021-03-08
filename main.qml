import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15
import QtQuick.Shapes 1.15

Window {
    id: window
    width: 800
    height: 200
    visible: true
    title: 'SVG'
    GridLayout {
        anchors.fill: parent
        columns: 4
        Text {
            text: 'Original'
            horizontalAlignment: Text.AlignHCenter
            Layout.preferredWidth: window.width / 4
            Layout.fillWidth: true
        }
        Text {
            text: 'Filled'
            horizontalAlignment: Text.AlignHCenter
            Layout.preferredWidth: window.width / 4
            Layout.fillWidth: true
        }
        Text {
            text: 'Filled (with sourceSize set)'
            horizontalAlignment: Text.AlignHCenter
            Layout.preferredWidth: window.width / 4
            Layout.fillWidth: true
        }
        Text {
            text: 'PathSvg'
            horizontalAlignment: Text.AlignHCenter
            Layout.preferredWidth: window.width / 4
            Layout.fillWidth: true
        }

        Item {
            Layout.preferredWidth: window.width / 4
            Layout.fillWidth: true
            Layout.fillHeight: true
            Image {
                anchors.centerIn: parent
                source: './triangle.svg'
            }
        }
        Image {
            Layout.preferredWidth: window.width / 4
            Layout.fillWidth: true
            Layout.fillHeight: true
            source: './triangle.svg'
        }
        Image {
            Layout.preferredWidth: window.width / 4
            Layout.fillWidth: true
            Layout.fillHeight: true
            source: './triangle.svg'
            sourceSize: Qt.size(width, height)
        }
        Shape {
            id: svg
            Layout.preferredWidth: window.width / 4
            Layout.fillWidth: true
            Layout.fillHeight: true
            ShapePath {
                fillColor: '#1B1E23'
                startX: 15.3 * svg.width / 39.2
                startY: 11.3 * svg.height / 39.2
                PathLine {
                    x: 29.2 * svg.width / 39.2
                    y: 19.6 * svg.height / 39.2
                }
                PathLine {
                    x: 15.3 * svg.width / 39.2
                    y: 27.9 * svg.height / 39.2
                }
            }
        }
    }
}
