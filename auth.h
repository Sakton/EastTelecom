#ifndef AUTH_H
#define AUTH_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QFile>
#include <QUrl>
#include <QString>
#include <QDebug>

#include <QNetworkCookie>
#include <QNetworkCookieJar>

#include <QSsl>
#include <QSslSocket>


class Auth : public QObject
{
    Q_OBJECT
public:
	explicit Auth(QObject *parent = nullptr);

signals:
    void onReady();

public slots:
    void getData();// Метод инициализации запроса на получение данных
    void getData2();
    void onResult(QNetworkReply *reply);    // Слот обработки ответа о полученных данных

private:
    QNetworkAccessManager *manager; // менеджер сетевого доступа
};

#endif // AUTH_H
