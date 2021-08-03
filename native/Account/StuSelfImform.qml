import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

//Student self imformation
Window{
    height:600
    width:800
    id:_window
    visible: true
    GridLayout{
        anchors.fill: parent
        anchors.leftMargin: 39
        columns:4
        rows: 3
        Label{
            text:"账号"
            Layout.column: 1;Layout.columnSpan: 1
            Layout.row:1;Layout.rowSpan: 1
        }
        Label{
            text:"某账号"
            Layout.column: 2;Layout.columnSpan: 2
            Layout.row:1;Layout.rowSpan:1
        }
        Label{
            id:_class
            text:"所属班级"
            Layout.column: 1;Layout.columnSpan: 1
            Layout.row: 2;Layout.rowSpan: 1
        }
        Rectangle{
            width:_window.width-500
            height: _class.height+15
            border.color: "black"
            color: "white"
            Layout.column: 2;Layout.columnSpan: 1
            Layout.row: 2;Layout.rowSpan: 1
            TextInput{
                focus: true
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
            }

        }
        Button{
            id:_add
            text:">"
            Layout.column: 3;Layout.columnSpan: 1
            Layout.row: 2;Layout.rowSpan: 1
            onClicked: {}
        }
        Button{
            id:_changePswd
            text:"更改密码"
            Layout.column: 1;Layout.columnSpan: 2
            Layout.row: 3;Layout.rowSpan: 1
            onClicked: {}
        }
        Button{
            id:_deleteuser
            text:"注销账户"
            Layout.column: 3;Layout.columnSpan: 2
            Layout.row: 3;Layout.rowSpan: 1
            onClicked: {}
        }

    }
}
