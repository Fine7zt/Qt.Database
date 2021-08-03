#ifndef USRLIST_H
#define USRLIST_H

#include <QMainWindow>
#include <qsql.h>
#include <qsqlquery.h>
#include <qsqlquerymodel.h>
namespace Ui {
class usrlist;
}

class usrlist : public QMainWindow
{
    Q_OBJECT

public:
    explicit usrlist(QWidget *parent = nullptr);
    ~usrlist();
    void queryx();
private slots:
    void on_fresh_clicked();


    void on_getx_clicked();

private:
    QSqlQueryModel *modelx = new QSqlQueryModel;

private:
    Ui::usrlist *ui;
};

#endif // USRLIST_H
