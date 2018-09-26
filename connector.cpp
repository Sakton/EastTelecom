#include <QList>
#include <QVector>
#include <QSharedPointer>
#include "connector.h"
#include "worknetcore.h"
#include "abstractbasewindow.h"
#include "eastsettings.h"
#include "eastakkaunt.h"

Connector::Connector(QObject *parent)
	: QObject{parent},
	  p_settings{new EastSettings},
	  p_workNetCore{WorkNetCore::Instance()},
	  p_akka{new EastAkkaunt},
	  m_statusCoociesIsSet{false}
{
	p_settings->sync();

	//date
	connect(this, static_cast<void(Connector::*)(DateQuery*)>(&Connector::dateToQuery),
			p_workNetCore, static_cast<void(WorkNetCore::*)(DateQuery*)>(&WorkNetCore::sendQuery));
	//reply после проверки
	connect(p_workNetCore, static_cast<void(WorkNetCore::*)(bool)>(&WorkNetCore::signalReplyResult),
			this, static_cast<void(Connector::*)(bool)>(&Connector::slotToResultQuery));
	connect(p_workNetCore, static_cast<void(WorkNetCore::*)(Sh_Ptr)>(&WorkNetCore::signalReplyQuery),
			p_akka, static_cast<void(EastAkkaunt::*)(Sh_Ptr)>(&EastAkkaunt::pullAnswer));
}

Connector::~Connector()
{
	delete p_workNetCore;
	p_workNetCore = nullptr;
	delete p_akka;
	p_akka = nullptr;
}

bool Connector::statusCoociesIsSet() const
{
	return m_statusCoociesIsSet;
}

void Connector::run()
{
	p_workNetCore->loadCoocie();
}

QObject *Connector::getPointerToObjectEastAkkaunt() const
{
	return p_akka;
}

DateQuery * Connector::listPairData(const QVariant var)
{
	DateQuery *date = new DateQuery;
	auto toVar = var.toList().toVector();
	//признак
	QString sign = toVar.at(0).toString();
	QVector<QString> temp1, temp2;
	for(qsizetype i = 1; i < toVar.size(); ++i)
	{
		if(i % 2 != 0) temp1.push_back(toVar.at(i).toString());
		else temp2.push_back(toVar.at(i).toString());
	}
	if(temp1.size() == temp2.size())
	{
		for(qsizetype i = 0; i < temp1.size(); ++i)
		{
			date->push_back(QPair<QString, QString>(temp1.at(i), temp2.at(i)));
		}
	}
    qDebug() << "date ==> " << *date;
	return date;
}

void Connector::slotFromQml(const QVariant var)
{
	emit this->dateToQuery(listPairData(var));
}

void Connector::windowName(QVariant name)
{
	//TODO свищь или не свищ !? вот в чем вопрос...
	auto page = name.toInt();
	switch(page)
	{
		case 0:
		{
            qDebug() << "свищ НУЛЬ\n";
			break;
		}
		case 1:
		{
            qDebug() << "свищ ОДИН\n";
			break;
		}
		case 2:
		{
            qDebug() << "свищ ДВА\n";
			break;
		}
		case 3:
		{
            qDebug() << "свищ ТРИ\n";
			break;
		}
		default:
		{
            qDebug() << "свищ ДЕФОЛТ";
			break;
		}
	}
}

void Connector::quiterConnector()
{
	qDebug() << "Connector::quiterConnector()";
	delete this;
}

void Connector::setStatusCoociesIsSet(bool statusCoociesIsSet)
{
	if (m_statusCoociesIsSet == statusCoociesIsSet)
		return;
	m_statusCoociesIsSet = statusCoociesIsSet;
	emit statusCoociesIsSetChanged(m_statusCoociesIsSet);
}

void Connector::slotToResultQuery(bool res)
{
	setStatusCoociesIsSet(res);
}

//********************************************
QString Connector::getCoocInString() const
{
//    p_workNetCore->
    if(p_workNetCore->ccCC() != "")
    {
        return p_workNetCore->ccCC();
    }
    else
    {
        return QString("NO_COOCIE_FILE");
    }
}
//**********************************************
