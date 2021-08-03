import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

//Observation point imform
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
                Layout.fillWidth: true
                model: ListModel{
                    id:_gcd
                    ListElement{lxj:"观察点1"}
                    ListElement{lxj:"观察点2"}
                    ListElement{lxj:"观察点3"}
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
            text:"点位："
        }
        TextField{
            Layout.row:1;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:2;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"点义："
        }
        TextField{
            Layout.row:2;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:3;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"经度："
        }
        TextField{
            Layout.row:3;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:4;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"纬度："
        }
        TextField{
            Layout.row:4;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:5;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"高程："
        }
        TextField{
            Layout.row:5;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:6;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"露头："
        }
        TextField{
            Layout.row:6;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
        Label{
            Layout.row:7;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"点类型："
        }
        ComboBox{
            model: ["1","2","3"]
            Layout.row:7;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
        }
    }
    ColumnLayout{
        id:_otherth
        anchors{
            top:_gcdinform.bottom;topMargin: 10
            left:parent.left;leftMargin: 10
            right: parent.right
        }
        RowLayout{
            Label {
                text: "照片信息"
                anchors.left:parent
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                //Layout.fillWidth: true
            }
            ToolButton{
                text:">"
                anchors.left:parent.left
                anchors.leftMargin: _window.width-50
                onClicked: {_selectx.open()}
            }
        }
        RowLayout{
            Label {
                text: "录音信息"
                anchors.left:parent
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                //Layout.fillWidth: true
            }
            ToolButton{
                text:">"
                anchors.left:parent.left
                anchors.leftMargin: _window.width-50
                onClicked: {_selectx.open()}
            }
        }
        RowLayout{
            Label {
                text: "录像信息"
                anchors.left:parent
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                //Layout.fillWidth: true
            }
            ToolButton{
                text:">"
                anchors.left:parent.left
                anchors.leftMargin: _window.width-50
                onClicked: {_selectx.open()}
            }
        }
        RowLayout{
            Label {
                text: "采样信息"
                anchors.left:parent
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                //Layout.fillWidth: true
            }
            ToolButton{
                text:">"
                anchors.left:parent.left
                anchors.leftMargin: _window.width-50
                onClicked: {_selectx.open()}
            }
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
            text:"删除观察点"
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
    D{i:0;formeditorZoom:0.75}
}
##^##*/
