//**********************************************************
// WorkNetCore
// Класс для работы с сетью.
// Должен быть единственный в приложении.
// Singleton
//**********************************************************


#ifndef WORKNETCORE_H
#define WORKNETCORE_H

#include <QtCore/QObject>
#include <QNetworkAccessManager>
#include <QNetworkCookieJar>
#include <QNetworkCookie>
#include <QNetworkRequest>
#include <QList>
#include <QSharedPointer>
#include "eastcoocie.h"
#include "eastjson.h"

class EastQuery;
using DateQuery = QList<QPair<QString, QString>>;
using Sh_Ptr = QSharedPointer<QByteArray>;
using List_Cooc = QList<QNetworkCookie>;

class WorkNetCore : public QObject
{
		Q_OBJECT

	public:
		static WorkNetCore *Instance(); //метод инициализации объекта
		void sendQuery(); //отправить запрос без GET с кукой

        //**********************
        QString ccCC()const;
        //********************

	private:
		explicit WorkNetCore(QObject *parent = nullptr);


	private slots:
		void replyToExternalEnviroment(QNetworkReply* rep); //метод отправки сигнала

	public:
		~WorkNetCore();

	signals:
		void answerQuery(Sh_Ptr rep); //сигнал передачи ответа в json на проверку
		void signalReplyQuery(Sh_Ptr rep); //сигнал передачи дальше в код наверх
		void signalCoociesIsSet(); //сигнал кука есть
		void signalReplyResult(bool res); //сигнал - плохой ответ

		//тест слот
	public slots:
        void sendQuery(DateQuery *dataInQuery); //отправить запрос
		void loadCoocie();

	private:
		QNetworkAccessManager *p_netManager; //Аггрегированный обьект сетевого менеджера
		EastQuery *p_queryApp; //Аггрегированный обьект запросов
		static WorkNetCore *p_self; //уникальный экземпляр
		EastCoocie *p_coocies;
		EastJson *p_json;
		QByteArray *p_answer;
};

#endif // WORKNETCORE_H
