#ifndef EASTSETTINGS_H
#define EASTSETTINGS_H

#include <QtCore/QObject>
#include <QSettings>

class EastSettings : public QObject
{
		Q_OBJECT
	public:
		explicit EastSettings(QObject *parent = nullptr);
		virtual ~EastSettings();
		void sync(); //метод синхронизации Qsettings
	private:
		void initGlobalSettings(); // глобальные свойства всего приложения !!!
	private:
		QSettings *_p_settings;
		QString path;
};

#endif // EASTSETTINGS_H
