#include "login.h"

#include <QApplication>
#include <QtSql>
#include <QMessageBox>
#include "register.h"
#include "usrlist.h"
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
   // Register r;
    //usrlist u;
    QSqlDatabase db=QSqlDatabase::addDatabase("QODBC");
    db.setDatabaseName(QString("DRIVER={SQL SERVER};"
                               "SERVER=LAPTOP-63METG6S;" //服务器名称
                               "DATABASE=xl;"//数据库名
                               //"UID=%3;"           //登录名
                               //"PWD=%4;"        //密码
                               )
                       //.arg("202.0.0.0")
                       //.arg("name")
                       //.arg("username")
                       //.arg("password")
                       );
        login w;
    if (!db.open())
    {
        qDebug()<<"connect sql server failed!";

    }
    else
    {
        w.show();
        qDebug()<<"connect sql server successfully!";
    }
    return a.exec();
}
