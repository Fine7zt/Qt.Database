#include "login.h"
#include "ui_login.h"
#include <qsqlquery.h>
#include <qsql.h>
#include <qdebug.h>
#include <qmessagebox.h>
#include "usrlist.h"
login::login(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::login)
{
    ui->setupUi(this);
}

login::~login()
{
    delete ui;
}


void login::on_loginbutton_clicked()
{
    QString usr,pwd;
    usr = ui->UsrEdit->text();
    pwd = ui->PwdEdit->text();
    QString s = QString("select * from userinform where Username = '%1' and Password = '%2'").arg(usr).arg(pwd);
    qDebug()<<s;
    QSqlQuery query;
    query.exec(s);
    if(query.first()){
        QMessageBox::information(NULL, "登陆成功", "登陆成功了！", QMessageBox::Yes);
        u.queryx();
        u.show();
    }
    else
        QMessageBox::warning(NULL,"Error","登录失败，请重试！！！");
}


void login::on_regbutton_clicked()
{
    r.show();
}

