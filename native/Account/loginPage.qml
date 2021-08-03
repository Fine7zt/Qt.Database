import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

//login
Window{
    height:600
    width:800
    id:_window
    visible: true
    GridLayout{
        id:_x
        anchors.verticalCenterOffset: -48
        anchors{
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }

        //anchors.left:parent.left
        //anchors.right:parent.right
        columns: 3
        rows:2
        Label{
            Layout.row: 1;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"账号"
        }
        TextField{
            Layout.row: 1;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row: 2;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"密码"
        }
        TextField{
            Layout.row: 2;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
    }
    RowLayout{
        spacing: 22
        anchors{
            top:_x.bottom
            topMargin: 10
            horizontalCenter: parent.horizontalCenter
        }
        Button{
            text:"登录"
        }
        Button{
            text:"注册"
        }
    }
}
