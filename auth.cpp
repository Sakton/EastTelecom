#include "auth.h"
#include <QJsonArray>
#include <QJsonObject>
#include <QJsonDocument>
#include <QSettings>

Auth::Auth(QObject *parent) : QObject(parent)
{
    // Инициализируем менеджер ...
    manager = new QNetworkAccessManager();

    // ... и подключаем сигнал о завершении получения данных к обработчику полученного ответа
    connect(manager, &QNetworkAccessManager::finished, this, &Auth::onResult);
}

void Auth::getData()
{
    QByteArray data;
    QList<QNetworkCookie> cookies;
    QNetworkRequest request;    // Отправляемый запрос

    // проверим нет ли сохраненной куки и если есть вставим ее в запрос
    QFile file("cookies");
    if (!file.open(QIODevice::ReadOnly)) // Открваем файл, если это возможно
            return; // если открытие файла невозможно, выходим из слота
//        cookies = file.readAll();


//        cookies = settings.getValue("Cookies", cookies);

    //усли кука есть то устанавливаем куку в запрос и меняем адрес
    if (!cookies.isEmpty()){
            request.setHeader(QNetworkRequest::CookieHeader, qVariantFromValue(cookies));
            request.setUrl(QUrl("https://debet.east.ru/cgi-bin/mobapp/index.pl"));
    } else {

        request.setUrl(QUrl("https://debet.east.ru/cgi-bin/mobapp/index.pl?action=authme&login=t1&pass=123"));        // Устанавлвиваем URL в запрос

        cookies =  manager->cookieJar()->cookiesForUrl(request.url());

        foreach (QNetworkCookie c, cookies) {
            data.append(c.toRawForm());
            data.append(';');
        }

        QFile *file = new QFile("/tmp/cookies");
        // Создаём файл для хранения куки и открываем его на перезапись ...
        if(file->open(QFile::WriteOnly)){
            file->write(data);  // и записываем
            file->close();      // закрываем файл
        qDebug() << "Save cookies is completed";
        }
    }


    // URL, к которому будем получать данные + login + password




    qDebug() << request.url();

    manager->get(request);

}

void Auth::getData2()
{

    QUrl url("https://debet.east.ru/cgi-bin/mobapp/index.pl"); // URL, к которому будем получать данные
    QNetworkRequest request;    // Отправляемый запрос
    request.setUrl(url);        // Устанавлвиваем URL в запрос
    manager->get(request);      // Выполняем запрос

}


void Auth::onResult(QNetworkReply *reply)
{

    QByteArray bytes = reply->readAll();
//    QString str = QString::fromUtf8(bytes.data(), bytes.size());
    int statusCode = reply->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt();

    QString strReply = (QString)bytes;
    QJsonDocument jsonResponse = QJsonDocument::fromJson(strReply.toUtf8());
    QJsonArray json_array = jsonResponse.array();

    qDebug() << "Session" << jsonResponse["Session"];
    qDebug() << "errNO" << jsonResponse["errNO"].toString();
    qDebug() << "errSTR" << jsonResponse["errSTR"].toString();
    qDebug() << "AccPROP" << jsonResponse["account_prop"];
    qDebug() << "balance" << jsonResponse["account_prop"]["balance"].toString();
    qDebug() << "current_tariff_id" << jsonResponse["account_prop"]["current_tariff_id"].toString();
    qDebug() << "current_tariff_name" << jsonResponse["account_prop"]["current_tariff_name"].toString();
    qDebug() << "current_tariff_price" << jsonResponse["account_prop"]["current_tariff_price"].toString();
    qDebug() << "email" << jsonResponse["account_prop"]["email"].toString();
    qDebug() << "full_name" << jsonResponse["account_prop"]["full_name"].toString();
    qDebug() << "id" << jsonResponse["account_prop"]["id"].toString();
    qDebug() << "iptv_set" << jsonResponse["account_prop"]["iptv_set"].toString();
    qDebug() << "is_blocked" << jsonResponse["account_prop"]["is_blocked"].toString();
    qDebug() << "login" << jsonResponse["account_prop"]["login"].toString();
    qDebug() << "mobile_phone" << jsonResponse["account_prop"]["mobile_phone"].toString();
    qDebug() << "next_tariff_id" << jsonResponse["account_prop"]["next_tariff_id"].toString();
    qDebug() << "next_tariff_name" << jsonResponse["account_prop"]["next_tariff_name"].toString();
    qDebug() << "next_tariff_price" << jsonResponse["account_prop"]["next_tariff_price"].toString();
    qDebug() << "self_blocked" << jsonResponse["account_prop"]["self_blocked"].toString();
//    QUrl url1 = reply->attribute(QNetworkReply::);


//    qDebug() << "reply------" << url1;
    qDebug() << "status code" << statusCode;
/*
    if(statusCode == 302)
    {
        QUrl newUrl = reply->attribute(QNetworkRequest::RedirectionTargetAttribute).toUrl();
        qDebug() << "redirected from " + replyUrl + " to " + newUrl.toString();
        QNetworkRequest newRequest(newUrl);
        manager->get(newRequest);
        return;
    }
*/
    // Если в процесе получения данных произошла ошибка
    if(reply->error()){
        // Сообщаем об этом и показываем информацию об ошибках
        qDebug() << "ERROR";
        qDebug() << reply->errorString();
    } else {
        // В противном случае создаём объект для работы с файлом
        QFile *file = new QFile("/tmp/file.json");
        // Создаём файл или открываем его на перезапись ...
        if(file->open(QFile::WriteOnly)){
            file->write(bytes);  // ... и записываем всю информацию со страницы в файл
            file->close();                  // закрываем файл
        qDebug() << "Downloading is completed";
        emit onReady(); // Посылаем сигнал о завершении получения файла
        }
    }
}

