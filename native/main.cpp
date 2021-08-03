#include <QGuiApplication>
#include <QQuickView>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "sqlquery.h"
#include "mydatebase.h"
#include "qsqldatabase.h"
#include <QtSql>
int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    qmlRegisterType<mydatebase>("mydatebase",1,0,"Mydatebase");
    qmlRegisterType<sqlquery>("sqlquerymodel",1,0,"Sqlquerymodel");
//    QSqlDatabase db=QSqlDatabase::addDatabase("QODBC");
//    db.setDatabaseName(QString("DRIVER={SQL SERVER};"
//                               "SERVER=LAPTOP-63METG6S;" //服务器名称
//                               "DATABASE=xl;"//数据库名
//                               //"UID=%3;"           //登录名
//                               //"PWD=%4;"        //密码
//                               )
//                       //.a rg("202.0.0.0")
//                       //.arg("name")
//                       //.arg("username")
//                       //.arg("password")
//                       );
//    if (!db.open())
//    {
//        qDebug()<<"connect sql server failed!";

//    }
//    else
//    {
//        qDebug()<<"connect sql server successfully!";
//    }

    QSqlDatabase database;
    database = QSqlDatabase::addDatabase("QSQLITE");
    database.setDatabaseName("http://82.156.3.178/LeonbroDB.db");
    if (!database.open())
    {
        qDebug() << "Error: Failed to connect database." << database.lastError();
    }
    else
    {
        qDebug() << "Succeed to connect database." ;
    }
    QQmlApplicationEngine engine;
    //model
    sqlquery *model1 = new sqlquery();
    //model1->setQuery("SELECT Username From userinform");
    engine.rootContext()->setContextProperty("usrlist", model1);
    //engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);


    return app.exec();
}
