#include <QString>
#include <QDebug>

#include "eastquery.h"

static const char* URL_POINT_ENTRANCE = "https://debet.east.ru/cgi-bin/mobapp/index.pl?";

EastQuery::EastQuery() : _p_query{new QUrlQuery}
{
	getUrl();
}

EastQuery::~EastQuery()
{
	delete _p_query;
	_p_query = nullptr;
}

const QUrlQuery EastQuery::getQuery(const DateQuery *dQ) const
{
	if(!_p_query->isEmpty())
	{
		_p_query->clear();
	}
	_p_query->setQuery(URL_POINT_ENTRANCE);
	for(auto element : *dQ)
	{
		_p_query->addQueryItem(element.first, element.second);
	}
    qDebug() << "query ==> " << (_p_query->toString());
	return *_p_query;
}

const QUrlQuery EastQuery::getQuery() const
{
	if(!_p_query->isEmpty())
	{
		_p_query->clear();
	}
	_p_query->setQuery(getUrl().toString());
	return *_p_query;
}

QUrl EastQuery::getUrl()
{
	QString *tmp = new QString(URL_POINT_ENTRANCE);
	return QUrl(tmp->mid(0, tmp->length()-1));
}
