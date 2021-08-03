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
                text:"路线1"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
            ToolButton{
                text:"路线信息"
            }
        }
    }
    Rectangle{
        id:_map
        width:parent.width
        anchors{
            top:_top.bottom;topMargin: 10
        }
        height:500
    }
    Button{
        anchors{
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }
        text:"添加观察点"
    }
}
