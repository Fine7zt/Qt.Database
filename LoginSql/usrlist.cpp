#include "usrlist.h"
#include "ui_usrlist.h"
#include<QDebug>
usrlist::usrlist(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::usrlist)
{
    ui->setupUi(this);
}

usrlist::~usrlist()
{
    delete ui;
}

void usrlist::queryx()
{
    modelx->setQuery("select* from userinform");

    modelx->setHeaderData(0, Qt::Horizontal, tr("Username"));
    modelx->setHeaderData(1, Qt::Horizontal, tr("Password"));
    ui->userview->setModel(modelx);                                    //指定model数据库模型
    ui->userview->verticalHeader()->setVisible(false);                  //最左侧标号隐藏
    ui->userview->setStyleSheet("gridline-color:rgb(0,0,0)");           //表格线设为黑色
    ui->userview->horizontalHeader()->setFixedHeight(30);               //设置表头高度
    //设置表头颜色
    ui->userview->horizontalHeader()->setStyleSheet("QHeaderView::section{background-color: qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 rgb(56,56,56),"
                                                    "stop:1 rgb(76,76,76));color:rgb(210,210,210);;padding-left: 3px;border: 1px solid #cdcdcd;}");
    //ui->userview->resize(560,450);
}

void usrlist::on_fresh_clicked()
{
    modelx->setQuery("select* from userinform");

    modelx->setHeaderData(0, Qt::Horizontal, tr("Username"));
    modelx->setHeaderData(1, Qt::Horizontal, tr("Password"));
    ui->userview->setModel(modelx);                                    //指定model数据库模型
}

void usrlist::on_getx_clicked()
{
    int row = ui->userview->currentIndex().row();
    qDebug()<<row;
    QModelIndex index1 = modelx -> index(row,0);
    QString id=modelx->data(index1).toString(); //获取索引对应的字符串
    qDebug()<<id;

}

