#ifndef MYDATEBASE_H
#define MYDATEBASE_H

#include <QObject>
#include <QSql>
#include <qsqlquery.h>
#include <qsqldatabase.h>
#include <qdebug.h>
class mydatebase :public QObject
{

    Q_OBJECT
    //注册属性，使之可以在QML中访问--具体语法百度Q_PROPERTY
public:
    explicit mydatebase(QObject *parent = nullptr);
    //通过Q_INVOKABLE宏标记的public函数可以在QML中访问

signals:
    //信号可以在QML中访问
public slots:
    void insert(QString usr, QString pwd);
    //public槽函数可以在QML中访问
private:
    //类的属性
    QString myName;
    int myYear;
    QSqlQuery query;

};

#endif // MYDATEBASE_H
