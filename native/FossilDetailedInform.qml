import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

//Sample Detailed Information
Window{
    height:800
    width:800
    id:_window
    visible: true
    property int $lx: 4
    ToolBar{
        id:_top
        anchors{
            left:parent.left
            right:parent.right
        }
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: qsTr("‹")
                onClicked: stack.pop()
            }
            ComboBox{
                model: ListModel{
                    id:_gcd
                    ListElement{lxj:"化石1"}
                    ListElement{lxj:"化石2"}
                    ListElement{lxj:"化石3"}
                }
            }
        }
    }
    GridLayout{
        id:_gcdinform
        anchors{
            top:_top.bottom
            horizontalCenter: parent.horizontalCenter
        }
        columns:3
        rows:7
        Label{
            Layout.row:1;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"采样位置："
        }
        TextField{
            Layout.row:1;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:2;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"采样人："
        }
        TextField{
            Layout.row:2;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:3;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"地质年代："
        }
        ComboBox{
            Layout.row:3;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
            model: ["白垩纪","寒武纪"]
        }

        Label{
            Layout.row:4;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"化石描述："
        }
        TextField{
            Layout.row:4;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
    }
    RowLayout{
        spacing: 28.3
        anchors{
            top:_otherth.bottom;topMargin: 10
            horizontalCenter: parent.horizontalCenter
        }
        Button{
            text:"确认"
        }
        Button{
            text:"删除化石"
        }
    }

    ScrollBar {
        id: vbar
        hoverEnabled: true
        active: hovered || pressed
        orientation: Qt.Vertical
        //size: parent.height / content.height
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
}
