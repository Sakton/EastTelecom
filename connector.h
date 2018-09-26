//****************************************
//Класс входа в с++ код приложения
//Класс связывает работу GUI QML модуля
//и логики приложения C++
//****************************************


#ifndef CONNECTOR_H
#define CONNECTOR_H

#include <QtCore/QObject>
#include <QVariant>
#include <QList>
#include <QNetworkCookie>

class EastAkkaunt;
class WorkNetCore;
class EastSettings;
class QNetworkReply;
using DateQuery = QList<QPair<QString, QString>>;
using Sh_Ptr = QSharedPointer<QByteArray>;
using List_Cooc = QList<QNetworkCookie>;

class Connector : public QObject
{
		Q_OBJECT
	public:
		explicit Connector(QObject *parent = nullptr);
		virtual ~Connector();

		bool getStatusCoocsSet() const;
		void setStatusCoocsSet(bool value);
		bool statusCoociesIsSet() const;
		void run(); //метод запуск после создания объектов в памяти

		//Передача указателя на обьект аккаунт в слой КуМЛ
		Q_INVOKABLE QObject *getPointerToObjectEastAkkaunt() const;
        //*********************************
        Q_INVOKABLE QString getCoocInString() const;
        //********************************************

	private:
		DateQuery * listPairData(const QVariant var);

	signals:
		void signalToBlockAuth(); //TODO идет в КУМЛЬКУ ??? зачем??
		void dateToQuery(DateQuery *);
		void whetherIsCoocies();
		void statusCoociesIsSetChanged(bool statusCoociesIsSet); //сигнал для QML о статусе куки

	public slots:
		void slotFromQml(const QVariant var); //принимаем данные из форм qml массив
		void windowName(QVariant name);
		void quiterConnector();
        void setStatusCoociesIsSet(bool statusCoociesIsSet);
		void slotToResultQuery(bool res);// прием результата проверки

	private:
        //TODO тут
		EastSettings * p_settings; // Класс настроек приложения. Connector - связной класс. Поэтому содержит в себе настройки.
		// Настройки с qml слоя передаются сюда и их можно сразу сохранить.
		WorkNetCore * p_workNetCore;
		EastAkkaunt * p_akka;
		Q_PROPERTY(bool statusCoociesIsSet READ statusCoociesIsSet WRITE setStatusCoociesIsSet NOTIFY statusCoociesIsSetChanged)
		bool m_statusCoociesIsSet;
};

#endif // CONNECTOR_H
