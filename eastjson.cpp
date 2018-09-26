#include <QSharedPointer>
#include <QJsonObject>

#include "eastjson.h"

EastJson::EastJson(QObject *parent) : QObject(parent),
	p_jsonDocument{nullptr}
{
	delete p_jsonDocument;
	p_jsonDocument = nullptr;
}

bool EastJson::checkReply(const QByteArray *rep)
{
//    qDebug() << "EastJson::checkReply ==>" << *rep;
	if(!rep->isNull() && !rep->isEmpty())
	{
		p_jsonDocument = new QJsonDocument(QJsonDocument::fromJson(*rep));
		if(p_jsonDocument->object()["errNO"].toInt() == 1)
		{
			return false;
		}
	}
	else
	{
		return false;
	}
	return true;
}
