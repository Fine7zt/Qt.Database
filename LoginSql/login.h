#ifndef LOGIN_H
#define LOGIN_H

#include <QMainWindow>
#include "register.h"
#include "usrlist.h"
QT_BEGIN_NAMESPACE
namespace Ui { class login; }
QT_END_NAMESPACE

class login : public QMainWindow
{
    Q_OBJECT

public:
    login(QWidget *parent = nullptr);
    ~login();

private slots:
    void on_loginbutton_clicked();

    void on_regbutton_clicked();
private:
    Register r;
    usrlist u;
private:
    Ui::login *ui;
};
#endif // LOGIN_H
