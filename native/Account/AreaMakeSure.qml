import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

Window{
    id: window
    width:800
    height: 600
    visible: true
    ListView{
        id:listView
        anchors.fill: parent
            leftMargin: 20
            topMargin:20
            spacing: 30
            model: ListModel{
                ListElement{name:"路线编号"}
                ListElement{name:"经度"}
                ListElement{name:"纬度"}
                ListElement{name:"高程"}
                ListElement{name:"纵坐标"}
                ListElement{name:"横坐标"}
                ListElement{name:"点类型"}
                ListElement{name:"日期"}
            }

            delegate: Row{
                id:fd
                height: 30
                GridLayout {
                    columnSpacing: 10
                    columns:3
                    Text {
                        id:ff
                        Layout.column: 1
                        Layout.columnSpan: 1
                        text: name
                        font.pointSize: 10
                        color: "black"
                    }
                    Rectangle {
                        width:listView.width-160
                        height:ff.height+10
                        color: "white"
                        border.color: "grey"
                        Layout.column:2
                        Layout.columnSpan: 2
                        //Layout.preferredWidth: 100
                        //Layout.fillWidth: true
                        anchors.left:parent.left
                        anchors.leftMargin: 100

                        TextInput {
                            anchors.fill: parent
                            font.pointSize: ff.font.pointSize
                            focus: true
                        }
                    }
                 }

            }
            footer: Rectangle{
                width:parent.width
                height:70
                                    Layout.fillWidth: true
                Button{
                    text:"确认"
                    anchors.centerIn: parent
                    Layout.fillWidth: true
                    onClicked: {}
                }
            }


}
}
