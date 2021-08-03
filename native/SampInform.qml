import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

//Sound information
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
                text:"采样信息"
            }
        }
    }
    ColumnLayout{
        anchors{
            top:_top.bottom;topMargin: 10
            left:parent.left;leftMargin: 10
            right:parent.right
        }
        RowLayout{
            id:_xoz
            anchors{
                top:parent.top
                left:parent.left
                right:parent.right
            }

            Label{
                text:"样品x份"
            }
            ToolButton{
                text:">"
                anchors.left:parent.left
                anchors.leftMargin: _window.width-50
                onClicked: {_selectx.open()}
            }
        }
        RowLayout{
            anchors{
                top:_xoz.bottom
                left:parent.left
                right:parent.right
            }

            Label{
                text:"化石x份"
            }
            ToolButton{
                text:">"
                anchors.left:parent.left
                anchors.leftMargin: _window.width-50
                onClicked: {_selectx.open()}
            }
        }

    }

}
