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
    ToolBar {
        id:_tool
        anchors.left:parent.left
        anchors.right:parent.right
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: qsTr("‹")
                onClicked: stack.pop()
            }
            Label {
                text: "XXXX班"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
            ToolButton {
                id: fileButton;
                text: "查看小组"
                onClicked: {}
            }
        }
    }
    ListView{
        z:-1
        id:_listview
        anchors.top:_tool.bottom
        anchors.left:parent.left
        anchors.right:parent.right
        anchors.bottom: parent.bottom
        model:ListModel{
            ListElement{myclass:"学生1"}
            ListElement{myclass:"学生2"}
            ListElement{myclass:"学生3"}
        }
        delegate: Column{
            height:50
            RowLayout {
                Label {
                    text: myclass
                    anchors.verticalCenter: parent.verticalCenter
                    horizontalAlignment: Qt.AlignHCenter
                    verticalAlignment: Qt.AlignVCenter
                    Layout.fillWidth: true
                }
                ToolButton{
                    text:">"
                    anchors.left:parent.left
                    anchors.leftMargin: _window.width-50
                    onClicked: {_selectx.open()}
                }
            }
        }
        footer: Rectangle{
            anchors.left: parent.left
            anchors.right:parent.right
            Button{
                text:"解散班级"
                anchors.horizontalCenter: parent.horizontalCenter
                Layout.fillWidth: true
            }
        }
    }
    Dialog {
        id:_selectx
        x:(parent.width-width)/2
        y:(parent.height-height)/2
        title: "选择一个选项"
        ColumnLayout{
            anchors.fill: parent
            Button{
                text:"查看作业"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button{
                text:"设为班长"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button{
                text:"删除学生"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        standardButtons: Dialog.Cancel

        //onAccepted: console.log("Ok clicked")
        //onRejected: console.log("Cancel clicked")
    }


}
