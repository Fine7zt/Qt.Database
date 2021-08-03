#include "mydatebase.h"

mydatebase::mydatebase(QObject *parent)
{

}

void mydatebase::insert(QString usr, QString pwd)
{
    //query.exec(s);
    query.prepare("Insert INTO userinform (Username,Password) values(?,?);");
    QVariantList usrname;
    usrname << usr;
    QVariantList pasword;
    pasword << pwd;
    query.addBindValue(usrname);
    query.addBindValue(pasword);

    query.execBatch();

}
