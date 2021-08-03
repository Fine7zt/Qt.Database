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
            Label{
                text:"路线X"
            }
        }
    }
    ColumnLayout{
        id:_zol
        anchors{
            top:_top.bottom;topMargin: 10
            left:parent.left;leftMargin: 10
            right:parent.right;rightMargin: 10
        }

        RowLayout{
            height: _znx.height
            anchors{
                left:parent.left
                right:parent.right
            }
            Label{
                text:"实习区:KKKKKKK"
            }
        }
        RowLayout{
            id:_znx
            anchors{
                left:parent.left
                right:parent.right
            }
            Label{
                text:"观察点：X"
            }
            ToolButton{
                text:">"
                anchors.left:parent.left
                anchors.leftMargin: _window.width-50
                onClicked: {_selectx.open()}
            }
        }
    }

    GridLayout{
        id:_gcdinform
        anchors{
            top:_zol.bottom
            horizontalCenter: parent.horizontalCenter
        }
        columns:3
        rows:13
        Label{
            Layout.row:1;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"起点经度："
        }
        TextField{
            Layout.row:1;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:2;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"起点纬度："
        }
        TextField{
            Layout.row:2;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:3;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"终点经度："
        }
        TextField{
            Layout.row:3;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:4;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"终点纬度："
        }
        TextField{
            Layout.row:4;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:5;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"起点高程："
        }
        TextField{
            Layout.row:5;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:6;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"终点高程："
        }
        TextField{
            Layout.row:6;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:7;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"起点横坐标："
        }
        TextField{
            Layout.row:7;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:8;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"起点纵坐标："
        }
        TextField{
            Layout.row:8;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:9;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"终点横坐标："
        }
        TextField{
            Layout.row:9;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:10;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"终点纵坐标："
        }
        TextField{
            Layout.row:10;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:11;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"路线描述："
        }
        TextField{
            Layout.row:11;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:12;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"目的任务："
        }
        TextField{
            Layout.row:12;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:13;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"备注："
        }
        TextField{
            Layout.row:13;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
    }
    RowLayout{
        spacing: 28.3
        anchors{
            top:_gcdinform.bottom;topMargin: 10
            horizontalCenter: parent.horizontalCenter
        }
        Button{
            text:"确认"
        }
        Button{
            text:"删除样品"
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

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/
