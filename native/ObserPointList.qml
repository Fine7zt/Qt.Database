import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

//Observation point list
Window{
    height:600
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
            Label {
                text: "路线X"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
            ToolButton {
                id: fileButton;
                text: "路线信息"
                onClicked: {}
            }
        }
    }
    ListView{
        z:-1
        anchors{
            top:_top.bottom
            left:parent.left
            right:parent.right
            bottom: parent.bottom
        }
        model: ListModel{
            id:_gcd
            ListElement{lxj:"观察点1"}
            ListElement{lxj:"观察点2"}
            ListElement{lxj:"观察点3"}
        }
        delegate: ItemDelegate{
            text:lxj
            width:parent.width
        }
        footer:Rectangle{
            z:-1
            anchors{
                bottom: parent.bottom
                left:parent.left
                right:parent.right
            }
            Button{
                text:"添加观察点"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    _gcd.append({lxj:"观察点"+$lx})
                    $lx=$lx+1
                }
            }
        }
    }
}
