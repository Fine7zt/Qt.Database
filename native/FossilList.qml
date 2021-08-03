import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

//photo information
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
                text:"化石信息表"
            }
        }
    }
    ListView{
        spacing: 10
        anchors{
            top:_top.bottom;topMargin: 10
            left:parent.left;leftMargin: 10
            right:parent.right;rightMargin: 10
            bottom: parent.bottom
        }

        model: ListModel{
            id:_photolist
            ListElement{photo:"化石1"}
            ListElement{photo:"化石2"}
            ListElement{photo:"化石3"}
        }
        delegate: Column{
            height:50
            RowLayout{
                anchors{
                    left:parent.left
                    right:parent.right
                }
                Label{
                    text:photo
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
            anchors{
                left:parent.left
                right:parent.right
            }

            Button{
                text:"添加化石"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    _photolist.append({photo:"化石"+$lx})
                    $lx=$lx+1
                }
            }
        }
    }
}
