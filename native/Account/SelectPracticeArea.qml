import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

Window{
    id:selectPracticeArea
    width:900
    height: 1000
    visible: true
    Page{
        anchors.fill: parent
        header: Label {
                color: "#000000"
                text: qsTr("选择实习区")
                font.pixelSize: Qt.application.font.pixelSize * 2
                horizontalAlignment: Text.AlignHCenter
                padding: 10
            }
        ListView{
            anchors.fill: parent
            model:ListModel{ListElement{name:"秭归"}
            ListElement{name:"快乐"}}
            delegate: ItemDelegate{
                text:name
                anchors.horizontalCenter: parent.horizontalCenter
                Layout.fillWidth: parent
            }
        }
    }
}
