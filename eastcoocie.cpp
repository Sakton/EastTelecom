#include <QSharedPointer>
#include <QNetworkCookieJar>
#include <QNetworkCookie>
#include <QFile>
#include <QCoreApplication>
#include <utility>

#include "eastcoocie.h"
#include "eastquery.h"

EastCoocie::EastCoocie(QObject *parent) : QNetworkCookieJar(parent), p_coocies{new List_Cooc}
{

}

EastCoocie::~EastCoocie()
{
	saveCoocies();
	delete p_coocies;
	p_coocies = nullptr;
}

bool EastCoocie::isCoocieEmpty() const
{
	return p_coocies->isEmpty();
}

List_Cooc EastCoocie::getListCoocies() const
{
	return *p_coocies;
}

QByteArray EastCoocie::toByteArray()
{
	QByteArray temp;
	if(!isCoocieEmpty())
	{
		for(auto cooca : *p_coocies)
		{
			temp.append(cooca.toRawForm());
		}
	}
	return temp;
}

void EastCoocie::saveCoocies()
{
#ifdef Q_OS_ANDROID
    QString path = "/data/data/ru.east.app/coocies";
#else
    QString path = QCoreApplication::applicationDirPath() + QLatin1Char('/') + QString("coocies");
#endif
	QFile *f = new QFile(path);
	if(f->open(QFile::WriteOnly))
	{
		if(!(f->write(toByteArray()) == -1))
		{
			f->close();
		}
	}
	delete f;
}

bool EastCoocie::loadCoocies()
{
#ifdef Q_OS_ANDROID
    QString path = "/data/data/ru.east.app/coocies";
#else
    QString path = QCoreApplication::applicationDirPath() + QLatin1Char('/') + QString("coocies");
#endif
	QFile *f = new QFile(path);
	if(f->open(QFile::ReadOnly))
	{
		if(!isCoocieEmpty())
		{
			p_coocies->clear();
		}
		*p_coocies = QNetworkCookie::parseCookies(f->readAll());
		f->close();
		return true;
	}
	return false;
}

void EastCoocie::setCoocies(const List_Cooc value)
{
	if((p_coocies != &value) && !p_coocies->isEmpty())
		p_coocies->clear();
	*p_coocies = value;
}




