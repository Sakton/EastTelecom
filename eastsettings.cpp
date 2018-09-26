#include <QCoreApplication>
#include <QStandardPaths>
#include <QQuickStyle>
#include <QIcon>

#include <QDebug>

#include "eastsettings.h"

EastSettings::EastSettings(QObject *parent) : QObject(parent)
{
	initGlobalSettings();
	path = QCoreApplication::applicationDirPath() + QLatin1Char('/') + QString("test.ini");
#ifdef Q_OS_WIN
	_p_settings = new QSettings(path, QSettings::IniFormat, this); //QSettings::IniFormat - !!!!
#endif
#ifdef Q_MV_OSX
	_p_settings = new QSettings(path, QSettings::IniFormat, this); //QSettings::IniFormat - !!!!
#else
	_p_settings = new QSettings(path, QSettings::NativeFormat, this); //QSettings::NativeFormat - !!!!
#endif
	_p_settings->setValue("testvalue0", "333");
	_p_settings->setValue("testvalue1", "444");
}

EastSettings::~EastSettings()
{
	delete _p_settings;
	_p_settings = nullptr;
}

void EastSettings::sync()
{
	_p_settings->sync();
}

void EastSettings::initGlobalSettings()
{
	QIcon::setThemeName("east");
	QCoreApplication::setOrganizationName("ZAO East Telecom");
	QCoreApplication::setOrganizationDomain("http://www.east.ru");
	QCoreApplication::setApplicationName("EastTelecom");
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
}
