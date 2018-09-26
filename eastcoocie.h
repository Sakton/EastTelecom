#ifndef EASTCOOCIE_H
#define EASTCOOCIE_H

#include <QtCore/QObject>
#include <QtNetwork/QNetworkReply>

//???
#include <QNetworkCookieJar>

using List_Cooc = QList<QNetworkCookie>;

class EastCoocie : public QNetworkCookieJar
{
    Q_OBJECT
public:
    explicit EastCoocie(QObject *parent = nullptr);
    virtual ~EastCoocie();

public:
    bool isCoocieEmpty() const; //пустоли в списке
	List_Cooc getListCoocies() const; //посмотрим СД
	void saveCoocies(); //сохраним
	bool loadCoocies(); //почитаем и установим свойство
	void setCoocies(const List_Cooc value);

	private:
	QByteArray toByteArray(); //перевести в массив


signals:
	void signalCoocIsLoad();

public slots:


private:
	List_Cooc *p_coocies;
};

#endif // EASTCOOCIE_H
