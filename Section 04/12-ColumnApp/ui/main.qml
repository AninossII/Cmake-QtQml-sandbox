import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    id: appWindow

    property int margin: 11

    title: "Basic Layout"
    visible: true
    width: 500
    height: 500

    minimumWidth: mainLayout.Layout.minimumWidth + 2 * margin
    minimumHeight: mainLayout.Layout.minimumHeight + 2 * margin

    menuBar: MenuBar {
        Menu {
            title: "File"
            MenuItem {
                text: "Save"
            }
            MenuItem {
                text: "Save As"
            }
            MenuItem {
                text: "Open"
            }
            MenuItem {
                text: "Exit"
                onClicked: Qt.quit()
            }
        }
        Menu {
            title: "Edit"
            MenuItem {
                text: "Undo"
            }
            MenuItem {
                text: "Redo"
            }
            MenuItem {
                text: "Cut"
            }
            MenuItem {
                text: "Copy"
            }
            MenuItem {
                text: "Past"
            }
        }
        Menu {
            title: "Help"
            MenuItem {
                text: "About"
            }
            MenuItem {
                text: "Contact"
            }
        }
    }

    ColumnLayout {
        id: mainLayout // this id will use as a ref to specify the minimum Width & Height of the window

        width: parent.width
        anchors {
            // Anchors is a CSS property use tospecigy the UI layout or the UI arrangent of the components
            // fill: parent    // parent = appWindow
            margins: appWindow.margin //parent.margin
        }        
        spacing: 10

        Rectangle {
            Layout.alignment: Qt.AlignCenter
            width: 300
            height: 100
            color: "#3e6688"
            border.color: "#424547"
            border.width: 3
            radius: 10
        }

        Rectangle {
            Layout.alignment: Qt.AlignLeft
            width: 300
            height: 100
            color: "#82665c"
            border.color: "#424547"
            border.width: 3
            radius: 10            
        }

        Rectangle { 
            Layout.alignment: Qt.AlignCenter           
            width: 300
            height: 100
            color: "#3a443d"
            border.color: "#424547"
            border.width: 3
            radius: 30            
        }

        Rectangle {
            Layout.alignment: Qt.AlignRight
            x: 100; y: 500
            width: 300
            height: 100
            gradient: Gradient {
                GradientStop {
                    color: "#88c0df"
                    position: 0.0
                }
                GradientStop {
                    color: "#3e6688"
                    position: 1.0
                }
            }
            border.color: "#424547"
            border.width: 3
            radius: 10
        }
    }
}
