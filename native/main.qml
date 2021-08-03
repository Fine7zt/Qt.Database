import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import mydatebase 1.0
import sqlquerymodel 1.0
//Sound information
Window{
    id: root
    visible: true
    width: 500
    height: 300
    title: qsTr("数据库调用测试")
    Sqlquerymodel{
        id:_mymodel
    }

    Image {
        //fillMode: Image.TileHorizontally
                smooth: true
        id: xxxxxx
        source: "timg.jpg"
    }
    RowLayout{
            y: 0
            height: 126
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors{
                horizontalCenter: parent.horizontalCenter
            }

        TextField{
            id:_usrname

        }
        TextField{
            id:_pasword

        }
    }
    property string s: "insert INTO userinform (Username, Password) values('"+_usrname.text+"','"+_pasword.text+"')"

    Button{
        anchors.centerIn: parent
        text:"快乐的事情"
        onClicked: {

            _xxx.insert(_usrname.text,_pasword.text)
                console.log("succesful")
        }
    }

    Button{
        text:"x"
        onClicked: {
            _showst.show();
            //usrlist.setQueryU()
            usrlist.setQueryP()
            _mymodel.setQueryP()
        }
    }

    Mydatebase{
        id:_xxx
    }

    Window{
        id:_showst
        width: 500
        height: 300
        ListView{
            anchors.fill: parent
            //model:usrlist
            model:_mymodel
            delegate: ItemDelegate{
                width:parent.width
                //text:Username
                text:Password
            }
        }

    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
