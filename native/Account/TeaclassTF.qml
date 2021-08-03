import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

//class manager papge
Window{
    height:600
    width:800
    id:_window
    visible: true
    Dialog {
        id:_createnewclass
        x:(parent.width-width)/2
        y:(parent.height-height)/2
        title: "创建选项"
        RowLayout{
            anchors.fill: parent
            Label{
                id:__classnum
                text:"班级号："
            }
            Rectangle{
                border.color: "black"
                color: "white"
                height: __classnum.height+10
                width:100
                TextInput{
                    id:_classnum
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.fill: parent
                }
            }
        }

        standardButtons: Dialog.Ok | Dialog.Cancel

        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")
    }
    Dialog {
        id:_joinnewclass
        x:(parent.width-width)/2
        y:(parent.height-height)/2
        title: "加入选项"
        RowLayout{
            anchors.fill: parent
            Label{
                id:__classnumx
                text:"班级号："
            }
            Rectangle{
                border.color: "black"
                color: "white"
                height: __classnumx.height+10
                width:100
                TextInput{
                    id:_classnumx
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.fill: parent
                }
            }
        }

        standardButtons: Dialog.Ok | Dialog.Cancel

        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")
    }

    GroupBox{
        id:_createclasslist
        title: "创建的班级"
        anchors.top: parent.top;anchors.topMargin: 50
        anchors.left: parent.left;anchors.leftMargin: 10
        anchors.right: parent.right;anchors.rightMargin: 10
        GridLayout{
            anchors.fill: parent
            columns: 4
            rows:3
            Button{
                Layout.row:1;Layout.rowSpan: 1
                Layout.column: 1;Layout.columnSpan: 1
                text:"191181"
            }
            Button{
                Layout.row:1;Layout.rowSpan: 1
                Layout.column: 2;Layout.columnSpan: 1
                text:"191182"
            }
            Button{
                Layout.row:1;Layout.rowSpan: 1
                Layout.column: 3;Layout.columnSpan: 1
                text:"191183"
            }
            Button{
                Layout.row:2;Layout.rowSpan: 1
                Layout.column: 1;Layout.columnSpan: 1
                text:"192181"
            }
            Button{
                Layout.row: 2;Layout.rowSpan: 1
                Layout.column: 2;Layout.columnSpan: 1
                text:"192182"
            }
            Button{
                Layout.row:2;Layout.rowSpan: 1
                Layout.column: 3;Layout.columnSpan: 1
                text:"➕"
                onClicked: {_createnewclass.open()}
            }
        }
    }
    GroupBox{
        anchors.top:_createclasslist.bottom;anchors.topMargin: 20
        anchors.left: parent.left;anchors.leftMargin: 10
        anchors.right: parent.right;anchors.rightMargin: 10
        title:"加入的班级"
        id:_joinclasslist
        GridLayout{
            anchors.fill: parent
            columns: 4
            rows:3
            Button{
                Layout.row:1;Layout.rowSpan: 1
                Layout.column: 1;Layout.columnSpan: 1
                text:"191181"
            }
            Button{
                Layout.row:1;Layout.rowSpan: 1
                Layout.column: 2;Layout.columnSpan: 1
                text:"191182"
            }
            Button{
                Layout.row:1;Layout.rowSpan: 1
                Layout.column: 3;Layout.columnSpan: 1
                text:"191183"
            }
            Button{
                Layout.row:2;Layout.rowSpan: 1
                Layout.column: 1;Layout.columnSpan: 1
                text:"192181"
            }
            Button{
                Layout.row: 2;Layout.rowSpan: 1
                Layout.column: 2;Layout.columnSpan: 1
                text:"192182"
            }
            Button{
                Layout.row:2;Layout.rowSpan: 1
                Layout.column: 3;Layout.columnSpan: 1
                text:"➕"
                onClicked: {_joinnewclass.open()}
            }
        }
    }
}
