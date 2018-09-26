#ifndef EASTQUERY_H
#define EASTQUERY_H
#include <QObject>
#include <QString>
#include <QNetworkCookie>
#include <QUrlQuery>

class QUrlQuery;
using DateQuery = QList<QPair<QString, QString>>;

class EastQuery
{
	public:
		explicit EastQuery();
		virtual ~EastQuery();

        const QUrlQuery getQuery(const DateQuery * dQ) const;
        const QUrlQuery getQuery() const;
		static QUrl getUrl(); //возвращает чистый урл

	private:

		QUrlQuery *_p_query;
};

#endif // EASTQUERY_H
