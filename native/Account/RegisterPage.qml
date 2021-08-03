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
        anchors.verticalCenterOffset: -35
        columns:3
        rows:5
        anchors{
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }
        Label{
            Layout.row: 1;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"账号："
        }
        TextField{
                Layout.row: 1;Layout.rowSpan: 1
                Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row: 2;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"密码："
        }
        TextField{
                Layout.row: 2;Layout.rowSpan: 1
                Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row: 3;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"确认密码："
        }
        TextField{
                Layout.row: 3;Layout.rowSpan: 1
                Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row: 4;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"姓名："
        }
        TextField{
                Layout.row: 4;Layout.rowSpan: 1
                Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row: 5;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"身份："
        }
        ComboBox{
             Layout.row: 5;Layout.rowSpan: 1
             Layout.column: 2;Layout.columnSpan: 1
             model: ["老师","学生"]
        }
    }
    Button{
        text:"注册"
        anchors{
            top:_x.bottom;topMargin: 10
            horizontalCenter: parent.horizontalCenter
        }
    }
}
