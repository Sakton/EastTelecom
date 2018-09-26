#ifndef EASTJSON_H
#define EASTJSON_H

#include <QtCore/QObject>
#include <QtNetwork/QNetworkReply>
#include <QJsonDocument>

using Sh_Ptr = QSharedPointer<QByteArray>;

class EastJson : public QObject
{
		Q_OBJECT
	public:
		explicit EastJson(QObject *parent = nullptr);
		bool checkReply(const QByteArray *rep);

	signals:


	public slots:

	private:
		QJsonDocument * p_jsonDocument;
};

#endif // EASTJSON_H
