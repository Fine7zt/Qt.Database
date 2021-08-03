import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

Window{
    width:800
    height: 600
    visible: true
    ListView{
            id:listView
            anchors.fill: parent
            model: 10
            headerPositioning: ListView.PullBackHeader
highlightRangeMode: ListView.StrictlyEnforceRange
            header: Rectangle{
                width: listView.width
                height: 70
                color: "green"
                Label{
                    anchors.centerIn: parent
                    text: "this is header"
                }
            }

            onCurrentIndexChanged: {
                console.log("current index = ",currentIndex)
            }

            delegate: Rectangle{
                  width: listView.width
                  height: 280
                  color: index%2 ? "red":"yellow"
                  Label{
                      id:txt
                      anchors.centerIn: parent
                      font.pointSize: 100
                      text: index+"5"
                  }
                  Label{
                      anchors.top: txt.bottom
                      font.pointSize: 30
                      text: "currentIndex = " + listView.currentIndex
                      anchors.horizontalCenter: parent.horizontalCenter
                  }
            }
        }

}
