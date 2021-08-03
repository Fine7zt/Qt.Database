#include "sqlquery.h"
#include <QSqlRecord>
#include <QSqlField>
#include <QDebug>
void sqlquery::generateRoleNames()
{
    QHash<int, QByteArray>roleNames;
    for(int i=0;i<record().count();i++)
    {
        roleNames[Qt::UserRole+i+1]=record().fieldName(i).toUtf8();
    }
    //setRoleNames(roleNames);
}

sqlquery::sqlquery()
{

}

void sqlquery::setQuery(const QString &query, const QSqlDatabase &db)
{
    QSqlQueryModel::setQuery(query,db);
    generateRoleNames();
}

void sqlquery::setQuery(const QSqlQuery &query)
{
    QSqlQueryModel::setQuery(query);
    generateRoleNames();
}

QVariant sqlquery::data(const QModelIndex &index, int role) const
{

    QVariant value = QSqlQueryModel::data(index, role);
    if(role < Qt::UserRole)
    {
        value = QSqlQueryModel::data(index, role);
    }
    else
    {
        int columnIdx = role - Qt::UserRole - 1;
        QModelIndex modelIndex = this->index(index.row(), columnIdx);
        value = QSqlQueryModel::data(modelIndex, Qt::DisplayRole);
    }
    return value;
}

QHash<int, QByteArray> sqlquery::roleNames() const
{
    QHash<int, QByteArray> roleNames;
    for( int i = 0; i < record().count(); i++) {
        roleNames[Qt::UserRole + i + 1] = record().fieldName(i).toUtf8();
    }
    return roleNames;
}

void sqlquery::setQueryU()
{
    setQuery("SELECT Username From userinform");
}

void sqlquery::setQueryP()
{
    setQuery("select Password from userinform");
}
