#ifndef SQLQUERY_H
#define SQLQUERY_H

#include <QSqlQueryModel>

class sqlquery : public QSqlQueryModel
{
    Q_OBJECT

    void generateRoleNames();
public:
    sqlquery();

    void setQuery(const QString &query, const QSqlDatabase &db=QSqlDatabase());
    void setQuery(const QSqlQuery &query);
    QVariant data(const QModelIndex &index, int role) const;

    virtual QHash<int, QByteArray> roleNames()const;
signals:
public slots:
    void setQueryU();
    void setQueryP();
private:
    QString u,p;
};

#endif // SQLQUERY_H
