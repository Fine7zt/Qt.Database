import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.6
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2


//Observation point imform
//你真可爱
//努力加班
ApplicationWindow{
    id:_window
    visible: true
    width: 600
    height: 800
//some variant
    property variant location
    property variant paraphrase
    property variant outcrop

    property variant pointchahba
    property variant pointchahbb
    property variant pointchaj
    property variant pointchahaa
    property variant pointchahab

    property variant mediaid

//give them a value
    Timer{
        interval: 500
        running: true
        repeat: true
        onTriggered: {
//            location = _sqloperate._SELECT_GPOINT_STRING(pointid, "LOCATION")
//            paraphrase = _sqloperate._SELECT_GPOINT_STRING(pointid, "PARAPHRASE")
//            outcrop = _sqloperate._SELECT_GPOINT_STRING(pointid, "OUTCROP")

//            pointchahba = _sqloperate._SELECT_POINT_STRING(pointid, "CHAHBA")
//            pointchahbb = _sqloperate._SELECT_POINT_STRING(pointid, "CHAHBB")
//            pointchaj = _sqloperate._SELECT_POINT_STRING(pointid, "CHAJ")
//            pointchahaa = _sqloperate._SELECT_POINT_STRING(pointid, "CHAHAA")
//            pointchahab = _sqloperate._SELECT_POINT_STRING(pointid, "CHAHAB")

//            mediaid = _sqloperate._SELECT_MEDIAID(pointid)


       //     _location.text = _sqloperate._SELECT_GPOINT_STRING(pointid, "LOCATION")
     //       _paraphrase.text = _sqloperate._SELECT_GPOINT_STRING(pointid, "PARAPHRASE")
      //      _pointchahba.text = _sqloperate._SELECT_POINT_STRING(pointid, "CHAHBA")
      //      _pointchahbb.text = _sqloperate._SELECT_POINT_STRING(pointid, "CHAHBB")
      //      _pointchaj.text = _sqloperate._SELECT_POINT_STRING(pointid, "CHAJ")
      //      _pointoutcrop.text=_sqloperate._SELECT_GPOINT_STRING(pointid, "OUTCROP")
            //_pointchahaa.text = _sqloperate._SELECT_POINT_STRING(pointid, "CHAHAA")
            //_pointchahab.text = _sqloperate._SELECT_POINT_STRING(pointid, "CHAHAB")
        }
    }

    header:ToolBar{
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
                text:"观察点"+pointnum;
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
            ToolButton{
                text:"详细信息"
            }
        }
    }
    Flickable{
        id:_gcdinforma
        anchors.fill: parent
        topMargin: 10
        contentHeight: _gcdinform.height+_lithology.height+_struture.height+_GeologicalDisasters.height+_otherth.height+_makesure.height+40
    GridLayout{
        id:_gcdinform
        rowSpacing: 24
        anchors{
            top:_top.bottom;topMargin: 10
            left:parent.left;leftMargin: 10
            right:parent.right;rightMargin: 10
        }
        columns:3
        rows:7
        Label{
            Layout.row:1;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"点位："
        }
        Label{

            text:location
            Layout.row:1;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
            Layout.fillWidth: true
        }
        Label{
            Layout.row:2;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"点义："
        }
        Label{

            text:paraphrase
            Layout.row:2;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
            Layout.fillWidth: true
        }
        Label{
            Layout.row:3;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"经度："
        }
        Label{

            text:pointchahba
            Layout.row:3;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
            Layout.fillWidth: true
        }
        Label{
            Layout.row:4;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"纬度："
        }
        Label{

            text:pointchahbb
            Layout.row:4;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
            Layout.fillWidth: true
        }
        Label{
            Layout.row:5;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"高程："
        }
        Label{

            text:pointchaj
            Layout.row:5;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
            Layout.fillWidth: true
        }
        Label{
            Layout.row:6;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"露头："
        }
        Label{

            text:outcrop
            Layout.row:6;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
            Layout.fillWidth: true
        }

        Label{
            Layout.row:7;Layout.rowSpan: 1
            Layout.column: 1;Layout.columnSpan: 1
            text:"点类型："
        }
        ComboBox{
            id:_pointtype
            Layout.fillWidth: true
            model: ["地质灾害点","岩性观察点","构造观察点","地层分界点"]
            Layout.row:7;Layout.rowSpan: 1
            Layout.column: 2;Layout.columnSpan: 1
//            onAccepted: {
//                if(find(editText)==="岩性观察点"){_lithology.visible=true;_struture.visible=false;_earthquake.visible=false}
//                if(find(editText)==="构造观察点"){_lithology.visible=false;_struture.visible=true;_earthquake.visible=false}
//                if(find(editText)==="地震观察点"){_lithology.visible=false;_struture.visible=true;_earthquake.visible=false}
//            }
            onCurrentTextChanged: {
                if(currentText=="岩性观察点"){_lithology.visible=true;_struture.visible=false;_GeologicalDisasters.visible=false;_otherth.anchors.top=_lithology.bottom;}
                if(currentText=="构造观察点"){_lithology.visible=false;_struture.visible=true;_GeologicalDisasters.visible=false;_otherth.anchors.top=_struture.bottom;}
                if(currentText=="地质灾害点"){_lithology.visible=false;_struture.visible=false;_GeologicalDisasters.visible=true;_otherth.anchors.top=_GeologicalDisasters.bottom}
            }
        }
//        Tumbler{
//            id:_pointtype
//            Layout.fillWidth: true
//            model: ["岩性观察点","构造观察点","地震观察点"]
//            Layout.row:7;Layout.rowSpan: 1
//            Layout.column: 2;Layout.columnSpan: 1
//        }
    }
    signal signalA;signal signalB; signal signalC;
    ColumnLayout{
        id:_lithology
        visible: _pointtype.currentIndex=1?true:false
        anchors{
            top:_gcdinform.bottom;topMargin: 10
            left:parent.left;leftMargin: 10
            right: parent.right;rightMargin: 10
        }
        RowLayout{
            id:_depart
            Label{
                text:"岩石分类:"
            }
            ComboBox{
                id:_rockclassify
                Layout.fillWidth: true
                model: ["变质岩","火成岩","沉积岩"]
                onCurrentTextChanged: {
                    if(currentText=="火成岩"&&_takeup.visible==true){_igneousrock.visible=true;_metamorphicrock.visible=false;_sedimentaryrock.visible=false}
                    if(currentText=="变质岩"&&_takeup.visible==true){_igneousrock.visible=false;_metamorphicrock.visible=true;_sedimentaryrock.visible=false}
                    if(currentText=="沉积岩"&&_takeup.visible==true){_igneousrock.visible=false;_metamorphicrock.visible=false;_sedimentaryrock.visible=true}
                }
            }
        }
        Button{
            id:_takedown
            visible: true
           // anchors.top:_depart.bottom;anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            text:"↓"
            onClicked: {
                _takedown.visible=false
                _takeup.visible=true
                if(_rockclassify.currentText=="火成岩"){
                    _igneousrock.visible=true;_metamorphicrock.visible=false;_sedimentaryrock.visible=false;
                    //_takeup.top=_igneousrock.bottom;_down.top=_takeup.bottom
                }
                if(_rockclassify.currentText=="变质岩"){_igneousrock.visible=false;_metamorphicrock.visible=true;_sedimentaryrock.visible=false;
                                                        _takeup.top=_metamorphicrock.bottom;_down.top=_takeup.bottom}
                if(_rockclassify.currentText=="沉积岩"){_igneousrock.visible=false;_metamorphicrock.visible=false;_sedimentaryrock.visible=true;
                                                        _takeup.top=_sedimentaryrock.bottom;_down.top=_takeup.bottom}
                //_igneousrock.visible=true
                //_down.top=_takeup.bottom
            }
        }

        ColumnLayout{
            id:_igneousrock
            anchors.top:_depart.bottom;anchors.topMargin: 10
            visible: false
            RowLayout{
                Label{
                    text:"火成岩岩石结构"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"火成岩岩石构造"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"火成岩产状"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"火成岩岩相"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"岩浆作用方式"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"岩石成因类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }
        ColumnLayout{
            id:_metamorphicrock
            anchors.top:_depart.bottom;anchors.topMargin: 10
            visible: false
            RowLayout{
                Label{
                    text:"变质岩岩石结构"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"变质岩岩石构造"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"变质作用类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"变质作用方式"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }
        ColumnLayout{
            id:_sedimentaryrock
            anchors.top:_depart.bottom;anchors.topMargin: 10
            visible: false
            RowLayout{
                Label{
                    text:"沉积岩岩石构造"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"颗粒粒级结构"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"颗粒圆度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"颗粒形状"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"颗粒表面特征"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积岩岩石结构"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积岩结构组分"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积物名称"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积物稠度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积物粘性"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"固结程度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"分选性"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积物结构"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"形态"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积环境"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积作用"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积相"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积方式"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积组合"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"沉积垂向变化"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }
        Button{
            visible: false
            id:_takeup
            //anchors.top:_igneousrock.bottom;anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            text:"↑"
            onClicked: {
                _takeup.visible=false
                _takedown.visible=true

                _igneousrock.visible=false;_metamorphicrock.visible=false;_sedimentaryrock.visible=false;
            }
        }
        ColumnLayout{
            id:_down
           // anchors.top: _takedown.bottom;anchors.topMargin: 10
            //anchors.topMargin: 10
            RowLayout{
                Label{
                    text:"摩氏硬度:"
                }
                ComboBox{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"解理等级:"
                }
                ComboBox{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断口等级:"
                }
                ComboBox{
                    Layout.fillWidth: true
                }
            }
        }

        //if(_pointtype.currentText="岩性观察点"){_happy}

    }
    ColumnLayout{
        id:_struture
        visible: _pointtype.currentIndex=2?true:false
        anchors{
            top:_gcdinform.bottom;topMargin: 10
            left:parent.left;leftMargin: 10
            right: parent.right;rightMargin: 10
        }
        RowLayout{
            Label{
                text:"构造类型:"
            }
            ComboBox{
                id:_structure_combox
                Layout.fillWidth: true
                model:["成层构造","褶皱","节理","断层","线理","面理","同沉积构造","岩浆岩构造","重力构造","底辟构造","撞击构造"]
                onCurrentTextChanged: {
                    if(currentText=="成层构造"&&_structrue_upButton.visible==true)
                    {
                        _Stratified.visible=true;
                        //_Stratified.visible=false
                        _Fold.visible=false
                        _Joint.visible=false
                        _Fault.visible=false
                        _Lineation.visible=false
                        _Foliation.visible=false
                        _Synsedimentary.visible=false
                        _Magmatic.visible=false
                        _Gravity.visible=false
                        _Diapirs.visible=false
                        _Impact.visible=false
                    }
                    if(currentText=="褶皱"&&_structrue_upButton.visible==true)
                    {
                        _Fold.visible=true
                        _Stratified.visible=false
                        //_Fold.visible=false
                        _Joint.visible=false
                        _Fault.visible=false
                        _Lineation.visible=false
                        _Foliation.visible=false
                        _Synsedimentary.visible=false
                        _Magmatic.visible=false
                        _Gravity.visible=false
                        _Diapirs.visible=false
                        _Impact.visible=false
                    }
                    if(currentText=="节理"&&_structrue_upButton.visible==true)
                    {
                        _Joint.visible=true
                        _Stratified.visible=false
                        _Fold.visible=false
                        //_Joint.visible=false
                        _Fault.visible=false
                        _Lineation.visible=false
                        _Foliation.visible=false
                        _Synsedimentary.visible=false
                        _Magmatic.visible=false
                        _Gravity.visible=false
                        _Diapirs.visible=false
                        _Impact.visible=false}
                    if(currentText=="断层"&&_structrue_upButton.visible==true)
                    {
                        _Fault.visible=true
                        _Stratified.visible=false
                        _Fold.visible=false
                        _Joint.visible=false
                        //_Fault.visible=false
                        _Lineation.visible=false
                        _Foliation.visible=false
                        _Synsedimentary.visible=false
                        _Magmatic.visible=false
                        _Gravity.visible=false
                        _Diapirs.visible=false
                        _Impact.visible=false}
                    if(currentText=="线理"&&_structrue_upButton.visible==true)
                    {
                        _Lineation.visible=true
                        _Stratified.visible=false
                        _Fold.visible=false
                        _Joint.visible=false
                        _Fault.visible=false
                        //_Lineation.visible=false
                        _Foliation.visible=false
                        _Synsedimentary.visible=false
                        _Magmatic.visible=false
                        _Gravity.visible=false
                        _Diapirs.visible=false
                        _Impact.visible=false}
                    if(currentText=="面理"&&_structrue_upButton.visible==true)
                    {
                        _Foliation.visible=true
                        _Stratified.visible=false
                        _Fold.visible=false
                        _Joint.visible=false
                        _Fault.visible=false
                        _Lineation.visible=false
                        //_Foliation.visible=false
                        _Synsedimentary.visible=false
                        _Magmatic.visible=false
                        _Gravity.visible=false
                        _Diapirs.visible=false
                        _Impact.visible=false}
                    if(currentText=="同沉积构造"&&_structrue_upButton.visible==true)
                    {
                        _Synsedimentary.visible=true
                        _Stratified.visible=false
                        _Fold.visible=false
                        _Joint.visible=false
                        _Fault.visible=false
                        _Lineation.visible=false
                        _Foliation.visible=false
                        //_Synsedimentary.visible=false
                        _Magmatic.visible=false
                        _Gravity.visible=false
                        _Diapirs.visible=false
                        _Impact.visible=false
                    }
                    if(currentText=="岩浆岩构造"&&_structrue_upButton.visible==true)
                    {
                        _Magmatic.visible=true
                        _Stratified.visible=false
                        _Fold.visible=false
                        _Joint.visible=false
                        _Fault.visible=false
                        _Lineation.visible=false
                        _Foliation.visible=false
                        _Synsedimentary.visible=false
                        //_Magmatic.visible=false
                        _Gravity.visible=false
                        _Diapirs.visible=false
                        _Impact.visible=false
                    }
                    if(currentText=="重力构造"&&_structrue_upButton.visible==true)
                    {
                        _Gravity.visible=true
                        _Stratified.visible=false
                        _Fold.visible=false
                        _Joint.visible=false
                        _Fault.visible=false
                        _Lineation.visible=false
                        _Foliation.visible=false
                        _Synsedimentary.visible=false
                        _Magmatic.visible=false
                        //_Gravity.visible=false
                        _Diapirs.visible=false
                        _Impact.visible=false
                    }
                    if(currentText=="底辟构造"&&_structrue_upButton.visible==true)
                    {
                        _Diapirs.visible=true
                        _Stratified.visible=false
                        _Fold.visible=false
                        _Joint.visible=false
                        _Fault.visible=false
                        _Lineation.visible=false
                        _Foliation.visible=false
                        _Synsedimentary.visible=false
                        _Magmatic.visible=false
                        _Gravity.visible=false
                        //_Diapirs.visible=false
                        _Impact.visible=false
                    }
                    if(currentText=="撞击构造"&&_structrue_upButton.visible==true)
                    {
                        _Impact.visible=true
                        _Stratified.visible=false
                        _Fold.visible=false
                        _Joint.visible=false
                        _Fault.visible=false
                        _Lineation.visible=false
                        _Foliation.visible=false
                        _Synsedimentary.visible=false
                        _Magmatic.visible=false
                        _Gravity.visible=false
                        _Diapirs.visible=false
                        //_Impact.visible=false
                    }
                }
            }
        }
        Button{
            id:_structrue_downButton
            text:"↓"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                _structrue_upButton.visible=true
                _structrue_downButton.visible=false

                if(_structure_combox.currentText=="成层构造"){_Stratified.visible=true}
                if(_structure_combox.currentText=="褶皱"){_Fold.visible=true}
                if(_structure_combox.currentText=="节理"){_Joint.visible=true}
                if(_structure_combox.currentText=="断层"){_Fault.visible=true}
                if(_structure_combox.currentText=="线理"){_Lineation.visible=true}
                if(_structure_combox.currentText=="面理"){_Foliation.visible=true}
                if(_structure_combox.currentText=="同沉积构造"){_Synsedimentary.visible=true}
                if(_structure_combox.currentText=="岩浆岩构造"){_Magmatic.visible=true}
                if(_structure_combox.currentText=="重力构造"){_Gravity.visible=true}
                if(_structure_combox.currentText=="底辟构造"){_Diapirs.visible=true}
                if(_structure_combox.currentText=="撞击构造"){_Impact.visible=true}
            }
        }
        ColumnLayout{
            //成层构造
            id:_Stratified
            visible: false
            RowLayout{
                Label{
                    text:"岩层位态"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"走向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"倾向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"倾角"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"岩层厚度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"接触关系"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"岩层面向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"岩层示顶标志"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }
        ColumnLayout{
            //褶皱
            id:_Fold
            visible: false
            RowLayout{
                Label{
                    text:"褶皱名称"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"褶皱展布方向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"枢纽走向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"枢纽倾伏向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"枢纽倾伏角"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"枢纽侧伏角"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"翼间角"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"左翼走向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"左翼倾向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"左翼倾角"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"右翼走向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"右翼倾向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"右翼倾角"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"褶皱尺度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"褶皱类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"核部地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"翼部地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"岩层性质"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"褶皱伴生构造"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"褶皱地质年代"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"褶皱时代确定依据"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }

        }
        ColumnLayout{
            //节理
            id:_Joint
            visible: false
            RowLayout{
                Label{
                    text:"节理类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"节理方位"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"节理间距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"节理密度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"节理长度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"节理交切关系"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"节理面特征"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"节理充填性质"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"同构造生长矿物"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"同构造脉系性质"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"雁列带宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"雁列带长度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"雁列角"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"单脉形态"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"雁列带组合"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }

        }
        ColumnLayout{
            //断层
            id:_Fault
            visible: false
            RowLayout{
                Label{
                    text:"断层名称"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层起点位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层终点位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"推覆体根带位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"飞来峰位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"构造窗位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层（带）走向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层面走向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层面倾向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层面倾角"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层走向变化"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层倾角变化"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"推覆体运移方向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层（带）总长度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断裂带宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断片长度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断片厚度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断片形状"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"推覆体展布面积"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"飞来峰面积"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"构造窗面积"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"推覆体运移距离"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层尺度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层要素"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"剪切带类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层带结构"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断裂带穿过的地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"上盘的地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"下盘的地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"根带的地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"外来系统地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"原地系统地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断片的地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层切割的岩体"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层切割的矿体"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"总滑距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"走向滑距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"倾向滑距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"水平滑距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"交迹滑距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"估计滑距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"地层地层离距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"铅直地层离距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"平错"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"落差"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"走向离距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"倾向离距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"水平错开"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"间距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"叠复"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"地层缺失离距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"估计离距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层岩类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层岩岩性"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层标志"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"上盘位移方向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"相对位移方式"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"确定相对位移的依据"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"地裂缝方向"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"地裂缝宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"地裂缝深度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"地裂缝位错量"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"地物错动方式"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"地物错动量"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"被错动长度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层崖位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层崖宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层崖高度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层崖坡度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"保留程度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层面特征"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层研究方法"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }
        ColumnLayout{
            //线理
            id:_Lineation
            visible: false
            RowLayout{
                Label{
                    text:"线理类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"线理的方位"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"石香肠宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"石香肠长度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"石香肠厚度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"纵间隔宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"横间隔宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"充填脉成分"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"石香肠断面形态"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"发育构造部位"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }

        }
        ColumnLayout{
            //面理
            id:_Foliation
            visible: false
            RowLayout{
                Label{
                    text:"面理类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"域组构结构"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"劈理域形态"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"劈理域平均间隔"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"劈理域相对宽度比"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"微劈石结构"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"微劈石边界特征"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }

        ColumnLayout{
            //同沉积构造
            id:_Synsedimentary
            visible: false
            RowLayout{
                Label{
                    text:"同沉积构造类型和性质"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"下降盘地层厚度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"上升盘地层厚度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断层面弯曲度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"逆牵引构造宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"牵引强度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"牵引幅度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"牵引角"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"构造闭合高度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }
        ColumnLayout{
            //岩浆岩构造
            id:_Magmatic
            visible: false
            RowLayout{
                Label{
                    text:"原生构造"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"接触面产状"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"侵入深度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"剥蚀深度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"岩体形态"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"侵位机制"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"岩浆热动力构造"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }

        }
        ColumnLayout{
            //重力构造
            id:_Gravity
            visible: false
            RowLayout{
                Label{
                    text:"重力构造类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑动构造名称"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑动构造位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑动构造时代"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"下伏系统地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑动系统地层"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑润层岩性"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }

            RowLayout{
                Label{
                    text:"主滑面产状"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑移距离"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑体长度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑体宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑体厚度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑构造岩类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"伴生构造类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }
        ColumnLayout{
            //底辟构造
            id:_Diapirs
            visible: false
            RowLayout{
                Label{
                    text:"底辟构造类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"底辟名称"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"底辟核形状"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"底辟核直径"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"底辟核高度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"底辟核顶部埋深"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"底辟核成分"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"帽岩成分"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"底辟围岩"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"源层成分"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"源层厚度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"源层埋深"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"周缘向斜特征"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"底辟伴生构造"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"底辟分布位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }

        }
        ColumnLayout{
            //撞击构造
            id:_Impact
            visible: false
            RowLayout{
                Label{
                    text:"撞击构造类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"撞击构造名称"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"撞击坑直径"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"撞击坑深度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"撞击岩类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"撞击形成年代"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"撞击构造位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }

        }
        //if(_pointtype.currentText="岩性观察点"){_happy}
        Button{
            id:_structrue_upButton
            text:"↑"
            visible: false
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                _Stratified.visible=false
                _Fold.visible=false
                _Joint.visible=false
                _Fault.visible=false
                _Lineation.visible=false
                _Foliation.visible=false
                _Synsedimentary.visible=false
                _Magmatic.visible=false
                _Gravity.visible=false
                _Diapirs.visible=false
                _Impact.visible=false

                _structrue_upButton.visible=false
                _structrue_downButton.visible=true
            }
        }
    }
    ColumnLayout{
        id:_GeologicalDisasters
        visible: false
        anchors{
            top:_gcdinform.bottom;topMargin: 10
            left:parent.left;leftMargin: 10
            right: parent.right;rightMargin: 10
        }
        RowLayout{
            Label{
                text:"地质灾害类型"
            }
            ComboBox{
                id:_Geodisasters_combox
                Layout.fillWidth: true
                model: ["滑坡","地震","塌陷","泥石流","渗漏","岩溶","崩塌"]
                onCurrentTextChanged: {
                    if(currentText=="滑坡"&&_Geodisasters_upButton.visible==true)
                    {
                        _landslide.visible=true
                        //_landslide.visible=false
                        _earthquake.visible=false
                        _collapse.visible=false
                        _debrisflow.visible=false
                        _leakage.visible=false
                        _karst.visible=false
                        _gckv.visible=false
                    }
                    if(currentText=="地震"&&_Geodisasters_upButton.visible==true)
                    {
                        _earthquake.visible=true
                        _landslide.visible=false
                        //_earthquake.visible=false
                        _collapse.visible=false
                        _debrisflow.visible=false
                        _leakage.visible=false
                        _karst.visible=false
                        _gckv.visible=false
                    }
                    if(currentText=="塌陷"&&_Geodisasters_upButton.visible==true)
                    {
                        _collapse.visible=true
                        _landslide.visible=false
                        _earthquake.visible=false
                        //_collapse.visible=false
                        _debrisflow.visible=false
                        _leakage.visible=false
                        _karst.visible=false
                        _gckv.visible=false
                    }
                    if(currentText=="泥石流"&&_Geodisasters_upButton.visible==true)
                    {
                        _debrisflow.visible=true
                        _landslide.visible=false
                        _earthquake.visible=false
                        _collapse.visible=false
                        //_debrisflow.visible=false
                        _leakage.visible=false
                        _karst.visible=false
                        _gckv.visible=false
                    }
                    if(currentText=="渗漏"&&_Geodisasters_upButton.visible==true)
                    {
                        _leakage.visible=true
                        _landslide.visible=false
                        _earthquake.visible=false
                        _collapse.visible=false
                        _debrisflow.visible=false
                        //_leakage.visible=false
                        _karst.visible=false
                        _gckv.visible=false
                    }
                    if(currentText=="岩溶"&&_Geodisasters_upButton.visible==true)
                    {
                        _karst.visible=true
                        _landslide.visible=false
                        _earthquake.visible=false
                        _collapse.visible=false
                        _debrisflow.visible=false
                        _leakage.visible=false
                        //_karst.visible=false
                        _gckv.visible=false
                    }
                    if(currentText=="崩塌"&&_Geodisasters_upButton.visible==true)
                    {
                        _gckv.visible=true
                        _landslide.visible=false
                        _earthquake.visible=false
                        _collapse.visible=false
                        _debrisflow.visible=false
                        _leakage.visible=false
                        _karst.visible=false
                        //_gckv.visible=false
                    }
                }
            }
        }
        //滑坡landslide 地震earthquake 塌陷collapse 泥石流debrisflow 渗漏leakage 岩溶karst 崩塌gckv
        Button{
            id:_Geodisasters_downButton
            visible: true
            anchors.horizontalCenter: parent.horizontalCenter
            text:"↓"
            onClicked: {
                _Geodisasters_downButton.visible=false
                _Geodisasters_upButton.visible=true

                if(_Geodisasters_combox.currentText=="滑坡"){_landslide.visible=true}
                if(_Geodisasters_combox.currentText=="地震"){_earthquake.visible=true}
                if(_Geodisasters_combox.currentText=="塌陷"){_collapse.visible=true}
                if(_Geodisasters_combox.currentText=="泥石流"){_debrisflow.visible=true}
                if(_Geodisasters_combox.currentText=="渗漏"){_leakage.visible=true}
                if(_Geodisasters_combox.currentText=="岩溶"){_karst.visible=true}
                if(_Geodisasters_combox.currentText=="崩塌"){_gckv.visible=true}
            }
        }

        ColumnLayout{
            //滑坡
            id:_landslide
            visible: false
            RowLayout{
                Label{
                    text:"滑坡类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑坡名称"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑坡位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑坡长度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑坡宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑坡面所在地层岩性"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑动速度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑动时间"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"滑坡稳定程度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"防治措施"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }

        ColumnLayout{
            //地震
            id:_earthquake
            visible: false
            RowLayout{
                Label{
                    text:"地面破坏效应"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"地基失稳"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"斜坡破坏效应"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"震动破坏效应"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"裂缝长度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"裂缝宽度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"裂缝深度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"断裂性质"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }

        ColumnLayout{
            //塌陷
            id:_collapse
            visible: false
            RowLayout{
                Label{
                    text:"塌陷类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"塌陷面积"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"塌陷地表变形特征"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"塌陷坑形态"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"塌陷分布地段"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"塌陷区地层岩性"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"塌陷区形成机制"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }

        ColumnLayout{
            //泥石流
            id:_debrisflow
            visible: false
            RowLayout{
                Label{
                    text:"泥石流种类"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"泥石流名称"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"泥石流稠度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"泥石流厚度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"下伏基岩面坡度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"泥石流防治措施"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"泥石流规模"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"泥石流发生时间"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"泥石流发生地点"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }

        ColumnLayout{
            //渗漏
            id:_leakage
            visible: false
            RowLayout{
                Label{
                    text:"渗漏通道"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"渗漏段位置"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"渗漏类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"防渗措施"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"渗漏段岩性"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }

        ColumnLayout{
            //岩溶
            id:_karst
            visible: false
            RowLayout{
                Label{
                    text:"岩溶基本类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"岩溶发育强度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"主要岩溶形态"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"洞穴充填情况"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"溶洞稳定性分级"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }

        ColumnLayout{
            //崩塌
            id:_gckv
            visible: false
            RowLayout{
                Label{
                    text:"崩塌类型"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"崩塌堆积物覆盖面积"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"崩塌垂直落距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"崩塌水平滚距"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"崩塌区地层岩性"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"崩塌区岩性风化程度"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
            RowLayout{
                Label{
                    text:"崩塌坡体变形阶段"
                }
                TextField{
                    Layout.fillWidth: true
                }
            }
        }
        Button{
            id:_Geodisasters_upButton
            visible: false
            text:"↑"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                _Geodisasters_downButton.visible=true
                _Geodisasters_upButton.visible=false

                _landslide.visible=false
                _earthquake.visible=false
                _collapse.visible=false
                _debrisflow.visible=false
                _leakage.visible=false
                _karst.visible=false
                _gckv.visible=false
            }
        }

        //if(_pointtype.currentText="岩性观察点"){_happy}

    }
    MenuSeparator{anchors{            bottom: _otherth.top
            left:parent.left
            right: parent.right}}

    ColumnLayout{
        id:_otherth
        anchors{
            //x:_top.height+_gcdinform.height+_lithology.height+_struture.height+10
//            top:{
//                if(_rockclassify.currentIndex=="岩性观察点")_lithology.bottom
//                if(_rockclassify.currentIndex=="构造观察点")_struture.bottom
//                //if(_rockclassify.currentIndex=="岩性观察点")_lithology.bottom
//            }
            top:_lithology.bottom
            topMargin: 10
            left:parent.left;leftMargin: 10
            right: parent.right
            //horizontalCenter: parent.horizontalCenter
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
                onClicked: {stack.push(_pi);_photolist._SETQUERY_PHOTOLIST(pointid)}
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
                onClicked: {stack.push(_si)}
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
                onClicked: {stack.push(_vi)}
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
                onClicked: {stack.push(_spi)}
            }
        }
    }
        RowLayout{
            id:_makesure
            spacing: 28.3
            anchors{
                top:_otherth.bottom;topMargin: 10
                horizontalCenter: parent.horizontalCenter
            }
            Button{
                text:"删除"

            }
            Button{
                text:"编辑"
                onClicked: {stack.push(_opix)}
            }
        }
    }
    Component{
        id:_happy
        Label{
            text:"happy"
        }
    }

//    Component{id:_pi;PhotoInform{}}
//    Component{id:_si;SoundInform{}}
//    Component{id:_vi;VideoInform{}}
//    Component{id:_spi;SampInform{}}
//    Component{id:_opix;ObserPointImform{}}
//    Sqlmodel{
//        id:_photolist
//    }
//    Sqloperate{
//        id:_sqloperate
//    }
}
