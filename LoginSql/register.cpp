#include "register.h"
#include "ui_register.h"
#include <qmessagebox.h>
Register::Register(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::Register)
{
    ui->setupUi(this);
}

Register::~Register()
{
    delete ui;
}

void Register::on_pushButton_clicked()
{
    QString usr,pwd;
    usr = ui->UsrEdit->text();
    pwd = ui->PwdEdit->text();

    if(usr == ""||pwd=="")
    {
        QMessageBox::information(NULL, "别写空行吗？", "请写点什么吧", QMessageBox::Yes);

    }
    else{
    QSqlQuery query;
    // 预处理语句， ？相当于占位符，不知道写什么，先占位置
    query.prepare("Insert INTO userinform (Username, Password) values (?,?);");
    //给字段设置内容
    QVariantList usrname;
    usrname << usr;
    QVariantList pasword;
    pasword << pwd;
    //绑定
    query.addBindValue(usrname);
    query.addBindValue(pasword);

    //执行预处理命令
    query.execBatch();
    QWidget::close();
    }
}


void Register::on_pushButton_2_clicked()
{
    QWidget::close();
}

