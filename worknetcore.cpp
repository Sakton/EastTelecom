#include <QNetworkReply>
#include <QUrlQuery>
#include <QJsonDocument>


#include "worknetcore.h"
#include "eastquery.h"

WorkNetCore *WorkNetCore::p_self{nullptr};

WorkNetCore *WorkNetCore::Instance()
{
    if(p_self == nullptr)
    {
        p_self = new WorkNetCore;
    }
    return p_self;
}

WorkNetCore::WorkNetCore(QObject *parent) : QObject{parent},
    p_netManager{new QNetworkAccessManager},
    p_queryApp{new EastQuery},
    p_coocies{new EastCoocie},
    p_json{new EastJson},
    p_answer{nullptr}
{
    connect(p_netManager, static_cast<void(QNetworkAccessManager::*)(QNetworkReply*)>(&QNetworkAccessManager::finished),
            this, static_cast<void(WorkNetCore::*)(QNetworkReply*)>(&WorkNetCore::replyToExternalEnviroment));
}

void WorkNetCore::sendQuery(DateQuery *dataInQuery)
{
    QNetworkRequest query = QNetworkRequest(p_queryApp->getQuery(dataInQuery).toString());
//	p_netManager->setCookieJar(new QNetworkCookieJar);//чистим все куки пустой кукой
    p_netManager->get(query);
}

void WorkNetCore::sendQuery()
{
    QNetworkRequest query = QNetworkRequest(p_queryApp->getQuery().toString());
    p_netManager->get(query);
}

//TODO ПОДУМАТЬ //TODO ПРИСТАЛЬНОЕ ВНИМАНИЕ НА МЕТОД!!!
void WorkNetCore::replyToExternalEnviroment(QNetworkReply *rep)
{
    int statusCode = rep->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt();
    qDebug() << "statusCode ==> " << statusCode;
    if(statusCode == 200)
    {
        p_coocies->setCoocies(p_netManager->cookieJar()->cookiesForUrl(EastQuery::getUrl()));
        qDebug() << "pointer p_answer 1 ==> " << p_answer;
        if(p_answer != nullptr)
        {
            //TODO нехорошо тут, запутывание кода !!!!!!!!!!
//            delete p_answer;
            p_answer = nullptr;
        }
        qDebug() << "pointer p_answer 2 ==> " << p_answer;
        if(p_answer == nullptr)
        {
            try
            {
                p_answer = new QByteArray;
                qDebug() << "new QByteArray";
                *p_answer = rep->readAll();
            }
            catch(...)
            {
                qDebug() << "WorkNetCore::replyToExternalEnviroment AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFUUUUUUCCCCCCCCCCCKKKKKKKKK";
            }
        }
        qDebug() << "pointer p_answer 3 ==> " << p_answer;
//        qDebug() << "WorkNetCore::replyToExternalEnviroment->p_answer ==> " << *p_answer;

        if(p_json->checkReply(p_answer)) //проверим ответ
        {
            //TODO ПРИСТАЛЬНОЕ ВНИМАНИЕ, СМОТРИМ ЗАХВАТ ЛЯМБДЫ
            emit signalReplyQuery(Sh_Ptr(p_answer, [&](QByteArray *p_reply) -> void {
                                      //удаляет этот обьект в другом классе
                                      //передача указателя по значению!!!
                                      qDebug() << "Deleter SharedPointer p_reply 1 ==> " << p_reply;
                                      delete p_reply;
                                      p_reply = nullptr;
                                      qDebug() << "delete p_reply;";
                                      qDebug() << "Deleter SharedPointer p_reply 2 ==> " << p_reply;
                                  }));
            emit signalReplyResult(true);
        }
        else
        {
            p_netManager->setCookieJar(new QNetworkCookieJar);//чистим все куки пустой кукой
            emit signalReplyResult(false);
        }
    }
    else
    {
        p_netManager->setCookieJar(new QNetworkCookieJar);//чистим все куки пустой кукой
        emit signalReplyResult(false);
    }
}

void WorkNetCore::loadCoocie()
{
    if(p_coocies->loadCoocies())
    {
        p_netManager->cookieJar()->setCookiesFromUrl(p_coocies->getListCoocies(), EastQuery::getUrl());
        sendQuery();
    }
}

WorkNetCore::~WorkNetCore()
{
    delete p_netManager;
    p_netManager = nullptr;
    delete p_queryApp;
    p_queryApp = nullptr;
    delete p_json;
    p_json = nullptr;
    delete p_coocies;
    p_coocies = nullptr;
}

//*********************************
QString WorkNetCore::ccCC() const
{
    //return p_coocies->getListCoocies();
    QString s;
    for(auto c : p_coocies->getListCoocies())
    {
        s += c.toRawForm();
    }
    qDebug() << "s ==> " << s;
    return s;
}
//***********************************
